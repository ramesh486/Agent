
data "oci_datacatalog_catalog_private_endpoints" "test_catalog_private_endpoints" {
  #Required
  compartment_id = var.compartment_ocid
}

data "oci_datacatalog_catalogs" "test_oci_datacatalog_catalogs" {
  compartment_id = var.compartment_ocid
}