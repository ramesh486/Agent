resource "oci_analytics_analytics_instance" "test_oce_instance_public" {
  compartment_id     = var.compartment_ocid
  description        = var.description
  feature_set        = var.feature_set
  license_type       = var.license_type

  capacity {
    capacity_type  = var.capacity_type
    capacity_value = var.capacity_value 
  }

  name              = var.name
  state             = var.state
  idcs_access_token = var.idcs_access_token
  defined_tags      = var.project_tag.definedTags
  freeform_tags     = var.project_tag.freeformTags
}



