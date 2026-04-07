resource "oci_core_instance_pool" "test_instance_pool" {
  compartment_id                = var.compartment_ocid
  instance_configuration_id     = var.instance_configuration_ocid
  size                          = var.instance_pool_size
  state                         = var.instance_pool_state
  display_name                  = var.instance_pool_display_name
  defined_tags                  = var.project_tag.definedTags
  freeform_tags                 = var.project_tag.freeformTags

  placement_configurations {
    availability_domain         = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
    fault_domains = [
      "FAULT-DOMAIN-1"]
    primary_subnet_id           = var.subnet_ocid
  }

  lifecycle {
    ignore_changes = [size]
  }
}
data "oci_identity_availability_domains" "ADs" {
  compartment_id                = var.compartment_ocid
}