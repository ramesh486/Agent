resource "oci_datacatalog_catalog"    "test_catalog" {
  compartment_id                     = var.compartment_ocid
  display_name                       = var.catalog_display_name
  
}


