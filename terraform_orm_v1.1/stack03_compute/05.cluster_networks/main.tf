
module "cluster_network" {

    source                                           = "./cluster_network_module"
    compartment_ocid                                 = var.compartment_ocid
    tenancy_ocid                                     = var.tenancy_ocid
    region                                           = var.region
    instance_configuration_ocid                      = var.instance_configuration_ocid
    cluster_network_instance_pools_size              = var.cluster_network_instance_pools_size    
    cluster_network_instance_pools_display_name      = var.cluster_network_instance_pools_display_name    
    subnet_ocid                                      = var.subnet_ocid

}