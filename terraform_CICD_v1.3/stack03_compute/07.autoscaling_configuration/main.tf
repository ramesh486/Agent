##########################
#Autoscaling configuration
##########################
module "autoscaling_configuration" {

    source                                  = "./autoscaling_configuration_module"
    tenancy_ocid                            = var.tenancy_ocid
    region                                  = var.region
    compartment_ocid                        = local.app_compartment_ocid
    cool_down_in_seconds                    = var.cool_down_in_seconds
    auto_scaling_configuration_display_name = var.auto_scaling_configuration_display_name
    policy_display_name                     = var.policy_display_name
    policy_type                             = var.policy_type
    capacity_initial                        = var.capacity_initial
    capacity_max                            = var.capacity_max
    capacity_min                            = var.capacity_min
    action_type                             = var.action_type
    action_display_name                     = var.action_display_name
    action_value                            = var.action_value
    metric_type                             = var.metric_type
    threshold_operator                      = var.threshold_operator
    threshold_value                         = var.threshold_value
    action_type1                            = var.action_type1
    action_value1                           = var.action_value1
    rules_display_name                      = var.rules_display_name
    metric_type1                            = var.metric_type1
    threshold_operator1                     = var.threshold_operator1
    threshold_value1                        = var.threshold_value1 
    instance_pool_ocid                      = local.instance_pool_ocid
    auto_scaling_resources_type             = var.auto_scaling_resources_type
    project_tag                             = var.project_tag
}