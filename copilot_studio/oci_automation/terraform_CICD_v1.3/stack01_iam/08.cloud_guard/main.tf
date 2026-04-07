
module "cloudguard" {
    source                  = "./cloudguard_module"
    tenancy_ocid            = var.tenancy_ocid
    region                  = var.region

    is_cloud_guard_enabled  = var.is_cloud_guard_enabled
    policy_description      = var.policy_description
    cloud_guard_policy_name = var.cloud_guard_policy_name
    policy_statements       = var.policy_statements

    cloud_guard_target_name = var.cloud_guard_target_name
    suffix                  = var.suffix
    target_resource_type    = var.target_resource_type
    target_description      = var.target_description
    vulnerability_scanning_service_policy_name = var.vulnerability_scanning_service_policy_name
    configuration_detector_recipe_display_name = var.configuration_detector_recipe_display_name
    activity_detector_recipe_display_name      = var.activity_detector_recipe_display_name
    threat_detector_recipe_display_name        = var.threat_detector_recipe_display_name
    responder_recipe_display_name              = var.responder_recipe_display_name

    project_tag     = var.project_tag 
}


### END