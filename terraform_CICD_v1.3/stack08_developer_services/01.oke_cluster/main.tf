##############################################            
##  oke_cluster 
##############################################

module "oke_cluster" {
    source                                                  = "./oke_module"
    compartment_ocid                                        = local.app_compartment_ocid
    tenancy_ocid                                            = var.tenancy_ocid
    project_tag                                             = var.project_tag
    node_pool_regional_size                                 = var.node_pool_regional_size
    node_pool_count                                         = var.node_pool_count
    instance_vm_image_ocid                                  = local.image_ocid
    node_instance_shape                                     = var.node_instance_shape
    node_pool_node_source_details_boot_volume_size_in_gbs   = var.node_pool_node_source_details_boot_volume_size_in_gbs
    node_config_memory_in_gbs                               = var.node_config_memory_in_gbs
    node_config_ocpus                                       = var.node_config_ocpus
    oke_display_name                                        = var.oke_display_name
    create_private_k8s_endpoint                             = var.create_private_k8s_endpoint
    vcn_ocid                                                = local.vcn_ocid
    load_balancer_subnet_ocid                               = local.load_balancer_subnet_ocid
    use_custom_ssh_public_key                               = var.use_custom_ssh_public_key
    ssh_public_key                                          = var.ssh_public_key
    worker_node_subnet_ocid                                 = local.worker_node_subnet_ocid
    k8s_api_endpoint_subnet_ocid                            = local.k8s_api_endpoint_subnet_ocid
    k8s_cluster_pods_cidr_blocks                            = var.k8s_cluster_pods_cidr_blocks
    k8s_cluster_services_cidr_blocks                        = var.k8s_cluster_services_cidr_blocks
    pod_network_option_details_cni_type                     = var.pod_network_option_details_cni_type
    pod_network_option_details_max_pods_per_node            = var.pod_network_option_details_max_pods_per_node
    pod_network_option_details_pod_nsg_ids                  = var.pod_network_option_details_pod_nsg_ids 
    pod_network_option_details_pod_subnet_ids               = var.pod_network_option_details_pod_subnet_ids 
}