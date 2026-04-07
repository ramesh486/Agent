
data "oci_cloud_guard_detector_recipes" "configuration_detector_recipe" {
  compartment_id = var.tenancy_ocid
  display_name   = var.configuration_detector_recipe_display_name
  depends_on     = [oci_cloud_guard_cloud_guard_configuration.tenancy_cloud_guard_configuration]
}


data "oci_cloud_guard_detector_recipes" "activity_detector_recipe" {
  compartment_id = var.tenancy_ocid
  display_name   = var.activity_detector_recipe_display_name
  depends_on     = [oci_cloud_guard_cloud_guard_configuration.tenancy_cloud_guard_configuration]
}


data "oci_cloud_guard_detector_recipes" "threat_detector_recipe" {
  compartment_id = var.tenancy_ocid
  display_name   = var.threat_detector_recipe_display_name
  depends_on     = [oci_cloud_guard_cloud_guard_configuration.tenancy_cloud_guard_configuration]
}


data "oci_cloud_guard_responder_recipes" "responder_recipe" {
  compartment_id = var.tenancy_ocid
  display_name   = var.responder_recipe_display_name
  depends_on     = [oci_cloud_guard_cloud_guard_configuration.tenancy_cloud_guard_configuration]
}


data oci_identity_tenancy tenancy {
  tenancy_id = var.tenancy_ocid
}

data oci_identity_regions regions {
}
