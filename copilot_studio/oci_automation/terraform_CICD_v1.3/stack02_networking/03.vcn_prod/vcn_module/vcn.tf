resource oci_core_vcn this {
  cidr_blocks = var.vcn_cidr_block
  compartment_id = var.compartment_ocid
  defined_tags = var.project_tag.definedTags
  display_name = var.vcn_display_name
  dns_label    = var.vcn_dns_label
  freeform_tags = var.project_tag.freeformTags
}