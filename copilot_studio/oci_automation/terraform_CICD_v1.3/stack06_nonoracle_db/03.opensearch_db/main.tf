#####################
## OpenSearch Cluster
#####################

module "opensearch_cluster" {
    source                                                  = "./opensearch_cluster_module"
    tenancy_ocid                                            = var.tenancy_ocid
    region                                                  = var.region 
    compartment_ocid                                        = local.db_compartment_ocid
    project_tag                                             = var.project_tag
    opensearch_cluster_data_node_count                      = var.opensearch_cluster_data_node_count
    opensearch_cluster_data_node_host_memory_gb             = var.opensearch_cluster_data_node_host_memory_gb
    opensearch_cluster_data_node_host_ocpu_count            = var.opensearch_cluster_data_node_host_ocpu_count
    opensearch_cluster_data_node_host_type                  = var.opensearch_cluster_data_node_host_type
    opensearch_cluster_data_node_storage_gb                 = var.opensearch_cluster_data_node_storage_gb
    opensearch_cluster_display_name                         = var.opensearch_cluster_display_name
    opensearch_cluster_master_node_count                    = var.opensearch_cluster_master_node_count
    opensearch_cluster_master_node_host_memory_gb           = var.opensearch_cluster_master_node_host_memory_gb
    opensearch_cluster_master_node_host_ocpu_count          = var.opensearch_cluster_master_node_host_ocpu_count
    opensearch_cluster_master_node_host_type                = var.opensearch_cluster_master_node_host_type
    opensearch_cluster_opendashboard_node_count             = var.opensearch_cluster_opendashboard_node_count
    opensearch_cluster_opendashboard_node_host_memory_gb    = var.opensearch_cluster_opendashboard_node_host_memory_gb
    opensearch_cluster_opendashboard_node_host_ocpu_count   = var.opensearch_cluster_opendashboard_node_host_ocpu_count
    opensearch_cluster_software_version                     = var.opensearch_cluster_software_version
    subnet_ocid                                             = local.subnet_ocid
    vcn_ocid                                                = local.vcn_ocid
    opensearch_cluster_data_node_host_bare_metal_shape      = var.opensearch_cluster_data_node_host_bare_metal_shape
    opensearch_cluster_master_node_host_bare_metal_shape    = var.opensearch_cluster_master_node_host_bare_metal_shape
    security_mode                                           = var.security_mode
    security_master_user_name                               = var.security_master_user_name
    security_master_user_password_hash                      = var.security_master_user_password_hash
   }


