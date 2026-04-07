data "oci_vulnerability_scanning_container_scan_recipes" "test_container_scan_recipes" {
  #Required
  compartment_id = var.compartment_ocid

  #Optional
  #display_name = var.container_scan_recipe_display_name
  state        = var.container_scan_recipe_state
}