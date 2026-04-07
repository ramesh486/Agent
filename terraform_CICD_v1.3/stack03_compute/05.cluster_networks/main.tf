###############
#Cluster network
###############
module "cluster_network" {

    source                                           = "./cluster_network_module"
    compartment_ocid                                 = local.app_compartment_ocid
    subnet_ocid                                      = local.subnet_ocid
    tenancy_ocid                                     = var.tenancy_ocid
    region                                           = var.region
    instance_configuration_ocid                      = local.instance_configuration_ocid
    cluster_network_instance_pools_size              = var.cluster_network_instance_pools_size    
    cluster_network_instance_pools_display_name      = var.cluster_network_instance_pools_display_name  
    project_tag                                      = var.project_tag  
}