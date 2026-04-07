resource "oci_datacatalog_catalog"    "test_catalog" {
  compartment_id                     = var.compartment_ocid
  display_name                       = var.catalog_display_name
  defined_tags                       = var.project_tag.definedTags
  freeform_tags                      = var.project_tag.freeformTags
  
}


