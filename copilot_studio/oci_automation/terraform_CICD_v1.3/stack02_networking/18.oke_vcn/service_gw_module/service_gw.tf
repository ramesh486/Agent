resource oci_core_service_gateway this {
  compartment_id = var.compartment_ocid
  defined_tags = var.project_tag.definedTags
  display_name = var.servicegw_display_name
  freeform_tags = var.project_tag.freeformTags
  services {
    // "all-sjc-services-in-oracle-services-network"
    service_id = var.service_gateway_service_ocid
  }
  vcn_id = var.vcn_ocid
}