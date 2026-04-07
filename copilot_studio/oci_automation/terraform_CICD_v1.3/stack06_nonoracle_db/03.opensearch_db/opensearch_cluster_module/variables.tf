variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "subnet_ocid" {}
variable "vcn_ocid" {}
variable "opensearch_cluster_data_node_count" {}
variable "opensearch_cluster_data_node_host_memory_gb" {}
variable "opensearch_cluster_data_node_host_ocpu_count" {}
variable "opensearch_cluster_data_node_host_type" {}
variable "opensearch_cluster_data_node_storage_gb" {}
variable "opensearch_cluster_display_name" {}
variable "opensearch_cluster_master_node_count" {}
variable "opensearch_cluster_master_node_host_memory_gb" {}
variable "opensearch_cluster_master_node_host_ocpu_count" {}
variable "opensearch_cluster_master_node_host_type" {}
variable "opensearch_cluster_opendashboard_node_count" {}
variable "opensearch_cluster_opendashboard_node_host_memory_gb" {}
variable "opensearch_cluster_opendashboard_node_host_ocpu_count" {}
variable "opensearch_cluster_software_version" {}
variable "opensearch_cluster_data_node_host_bare_metal_shape" {}
variable "opensearch_cluster_master_node_host_bare_metal_shape" {}
variable "security_mode" {}
variable "security_master_user_name" {}
variable "security_master_user_password_hash" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

