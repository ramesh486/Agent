variable "tenancy_ocid" {}

variable "region" {}

variable "compartment_ocid" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable "opensearch_cluster_data_node_count" {
#  default = 1
}

variable "opensearch_cluster_data_node_host_memory_gb" {
#  default = 20
}

variable "opensearch_cluster_data_node_host_ocpu_count" {
#  default = 2
}

variable "opensearch_cluster_data_node_host_type" {
#  default = "FLEX"
}

variable "opensearch_cluster_data_node_storage_gb" {
#  default = 50
}

variable "opensearch_cluster_display_name" {
#  default = "OpensearchExampleCluster"
}

# variable "opensearch_cluster_id" {
#   default = "id"
# }

variable "opensearch_cluster_master_node_count" {
#  default = 1
}

variable "opensearch_cluster_master_node_host_memory_gb" {
#  default = 20
}

variable "opensearch_cluster_master_node_host_ocpu_count" {
#  default = 1
}

variable "opensearch_cluster_master_node_host_type" {
#  default = "FLEX"
}

variable "opensearch_cluster_opendashboard_node_count" {
#  default = 1
}

variable "opensearch_cluster_opendashboard_node_host_memory_gb" {
#  default = 10
}

variable "opensearch_cluster_opendashboard_node_host_ocpu_count" {
#  default = 2
}

variable "opensearch_cluster_software_version" {
#  default = "1.2.4"
}

variable "subnet_ocid" {
  
}

variable "vcn_ocid" {
  
}

variable "opensearch_cluster_data_node_host_bare_metal_shape" {
#  default = "dataNodeHostBareMetalShape"
}

variable "opensearch_cluster_master_node_host_bare_metal_shape" {
#  default = "masterNodeHostBareMetalShape"
}

# variable "opensearch_cluster_state" {
#   default = "ACTIVE"
# }

variable "security_mode" {
#  default = "ENFORCING"
}

variable "security_master_user_name" {}

variable "security_master_user_password_hash" {}

