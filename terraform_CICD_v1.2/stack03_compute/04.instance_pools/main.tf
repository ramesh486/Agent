module "instance_pool" {

    source                      = "./instance_pool_module"
    region                      = var.region
    tenancy_ocid                = var.tenancy_ocid
    compartment_ocid            = local.app_compartment_ocid
    subnet_ocid                 = local.subnet_ocid
    instance_configuration_ocid = local.instance_configuration_ocid
    instance_pool_size          = var.instance_pool_size
    instance_pool_state         = var.instance_pool_state
    instance_pool_display_name  = var.instance_pool_display_name
    project_tag                 = var.project_tag
}                                          
                                              