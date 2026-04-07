resource oci_core_service_gateway this {
  compartment_id = var.compartment_ocid
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
  display_name = var.servicegw_display_name
  
  services {
    // "all-sjc-services-in-oracle-services-network"
    service_id = data.oci_core_services.this.services.0.id
  }
  vcn_id = var.vcn_ocid
}