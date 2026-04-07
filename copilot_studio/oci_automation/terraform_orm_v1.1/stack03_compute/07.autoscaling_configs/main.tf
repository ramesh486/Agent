module "autoscaling_configuration" {

    source                                  = "./autoscaling_configuration_module"
    tenancy_ocid                            = var.tenancy_ocid
    region                                  = var.region
    compartment_ocid                        = var.compartment_ocid
    cool_down_in_seconds                    = var.cool_down_in_seconds
    auto_scaling_configuration_display_name = var.auto_scaling_configuration_display_name
    policy_display_name                     = var.policy_display_name
    policy_type                             = var.policy_type 
    instance_pool_ocid                      = var.instance_pool_ocid

}