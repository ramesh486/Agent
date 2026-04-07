resource "oci_datacatalog_catalog_private_endpoint" "test_catalog_private_endpoint" {
    #Required
    compartment_id = var.compartment_ocid
    dns_zones      = var.catalog_private_endpoint_dns_zones
    subnet_id      = var.subnet_id
    display_name   = var.catalog_private_endpoint_display_name
    
}


