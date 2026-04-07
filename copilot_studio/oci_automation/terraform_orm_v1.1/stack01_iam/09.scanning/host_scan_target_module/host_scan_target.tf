resource "oci_vulnerability_scanning_host_scan_target" "test_host_scan_target" {
  #Required
  compartment_id            = var.compartment_ocid
  host_scan_recipe_id       = var.host_scan_recipe_ocid #data.oci_vulnerability_scanning_host_scan_recipe.TestHostScanRecipe.id
  target_compartment_id     = var.compartment_ocid

  #Optional
  description               = var.description #"Test target example"
  display_name              = var.display_name1 #"TestHostScanTarget"
  freeform_tags             = var.project_tag.freeformTags

  
}