resource "oci_vulnerability_scanning_container_scan_recipe" "test_container_scan_recipe" {
  #Required
  compartment_id = var.compartment_ocid
  scan_settings {
    #Required
    scan_level = var.scan_level #"NONE"
  }

  #Optional
  display_name                              = var.container_scan_recipe_display_name
  image_count                               = var.container_scan_recipe_image_count
  defined_tags                              = var.project_tag.definedTags
  freeform_tags                             = var.project_tag.freeformTags
  #container_repo_name                       = var.container_repo_name
  #vault_secret_ocid                         = var.vault_secret_ocid
}
