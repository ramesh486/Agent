resource "oci_opensearch_opensearch_cluster" "this" {
  compartment_id                     = var.compartment_ocid
  data_node_count                    = var.opensearch_cluster_data_node_count
  data_node_host_memory_gb           = var.opensearch_cluster_data_node_host_memory_gb
  data_node_host_ocpu_count          = var.opensearch_cluster_data_node_host_ocpu_count
  data_node_host_type                = var.opensearch_cluster_data_node_host_type
  data_node_storage_gb               = var.opensearch_cluster_data_node_storage_gb
  display_name                       = var.opensearch_cluster_display_name
  master_node_count                  = var.opensearch_cluster_master_node_count
  master_node_host_memory_gb         = var.opensearch_cluster_master_node_host_memory_gb
  master_node_host_ocpu_count        = var.opensearch_cluster_master_node_host_ocpu_count
  master_node_host_type              = var.opensearch_cluster_master_node_host_type
  opendashboard_node_count           = var.opensearch_cluster_opendashboard_node_count
  opendashboard_node_host_memory_gb  = var.opensearch_cluster_opendashboard_node_host_memory_gb
  opendashboard_node_host_ocpu_count = var.opensearch_cluster_opendashboard_node_host_ocpu_count
  software_version                   = var.opensearch_cluster_software_version
  subnet_compartment_id              = var.compartment_ocid
  subnet_id                          = var.subnet_ocid
  vcn_compartment_id                 = var.compartment_ocid
  vcn_id                             = var.vcn_ocid
  data_node_host_bare_metal_shape    = var.opensearch_cluster_data_node_host_bare_metal_shape
  defined_tags                       = var.project_tag.definedTags
  freeform_tags                      = var.project_tag.freeformTags
  master_node_host_bare_metal_shape  = var.opensearch_cluster_master_node_host_bare_metal_shape
  security_mode                      = var.security_mode
  security_master_user_name          = var.security_master_user_name
  security_master_user_password_hash = var.security_master_user_password_hash
}
