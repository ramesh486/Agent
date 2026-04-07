resource oci_core_internet_gateway this {
  compartment_id = var.compartment_ocid
  display_name = var.intgw_display_name
  enabled      = var.intgw_enabled
  defined_tags           = var.project_tag.definedTags
  freeform_tags          = var.project_tag.freeformTags
  vcn_id = var.vcn_ocid
}