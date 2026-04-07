resource "oci_datacatalog_catalog_private_endpoint" "test_catalog_private_endpoint" {
    #Required
    compartment_id          = var.compartment_ocid
    dns_zones               = var.catalog_private_endpoint_dns_zones
    subnet_id               = var.subnet_ocid
    display_name            = var.catalog_private_endpoint_display_name
    defined_tags            = var.project_tag.definedTags
    freeform_tags           = var.project_tag.freeformTags
    
}


