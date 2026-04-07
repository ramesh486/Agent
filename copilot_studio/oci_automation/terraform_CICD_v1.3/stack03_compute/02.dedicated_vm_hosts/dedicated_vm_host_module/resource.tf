resource "oci_core_dedicated_vm_host" "test_dedicated_vm_host" {
  availability_domain     = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id          = var.compartment_ocid
  dedicated_vm_host_shape = var.dedicated_vm_host_shape
  display_name            = var.display_name
  defined_tags            = var.project_tag.definedTags
  freeform_tags           = var.project_tag.freeformTags
}


data "oci_identity_availability_domains" "ADs" {
  compartment_id  = var.compartment_ocid
}