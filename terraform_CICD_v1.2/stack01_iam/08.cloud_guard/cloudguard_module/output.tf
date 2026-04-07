output "configuration_detector_recipe" {
  value = data.oci_cloud_guard_detector_recipes.configuration_detector_recipe
}

output "activity_detector_recipe" {
  value = data.oci_cloud_guard_detector_recipes.activity_detector_recipe
}

output "threat_detector" {
  value = data.oci_cloud_guard_detector_recipes.threat_detector_recipe
}

output "responder_recipe" {
  value = data.oci_cloud_guard_responder_recipes.responder_recipe
}

output home {
  value = local.home
}

### END