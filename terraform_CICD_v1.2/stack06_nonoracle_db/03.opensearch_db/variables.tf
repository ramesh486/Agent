variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "region" {
  type = string
  default = "us-ashburn-1"
  description = "Enter Region Name"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "db_opensearch_cluster"
        }
      freeformTags = {}
  }
}

variable "db_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "db_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}
variable "network_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable "subnet_display_name" {
  type = string
  default = ""
  description = "The subnet in which the application is deployed"
}

variable "vcn_display_name" {
  type = string
  default = ""
  description = "The VCN name in which the application is deployed"
}

##############################
# Opensearch Cluster Variables
##############################

variable "opensearch_cluster_data_node_count" {
  type        = number
  default     = 1
  description = "The number of data nodes to configure for the cluster."
}
variable "opensearch_cluster_data_node_host_memory_gb" {
  type        = number
  default     = 20
  description = "The amount of memory in GB, to configure per node for the cluster's data nodes."
}
variable "opensearch_cluster_data_node_host_ocpu_count" {
  type        = number
  default     = 2
  description = "The number of OCPUs to configure for the cluster's data nodes."
}
variable "opensearch_cluster_data_node_host_type" {
  type        = string
  default     = "FLEX"
  description = "The instance type for the cluster's data nodes."
}
variable "opensearch_cluster_data_node_storage_gb" {
  type        = number
  default     = 50
  description = "The amount of storage in GB, to configure per node for the cluster's data nodes."
}
variable "opensearch_cluster_display_name" {
  type        = string
  default     = "Opensearchcluster"
  description = "The name of the cluster"
}
variable "opensearch_cluster_master_node_count" {
  type        = number
  default     = 1
  description = "The number of master nodes to configure for the cluster."
}
variable "opensearch_cluster_master_node_host_memory_gb" {
  type        = number
  default     = 20
  description = "The amount of memory in GB, to configure per node for the cluster's master nodes."
}
variable "opensearch_cluster_master_node_host_ocpu_count" {
  type        = number
  default     = 1
  description = "The number of OCPUs to configure for the cluser's master nodes."
}
variable "opensearch_cluster_master_node_host_type" {
  type        = string
  default     = "FLEX"
  description = "The instance type for the cluster's master nodes."
}
variable "opensearch_cluster_opendashboard_node_count" {
  type        = number
  default     = 1
  description = "The number of OpenSearch Dashboard nodes to configure for the cluster."
}
variable "opensearch_cluster_opendashboard_node_host_memory_gb" {
  type        = number
  default     = 10
  description = "The amount of memory in GB, to configure for the cluster's OpenSearch Dashboard nodes."
}
variable "opensearch_cluster_opendashboard_node_host_ocpu_count" {
  type        = number
  default     = 2
  description = "The number of OCPUs to configure for the cluster's OpenSearch Dashboard nodes."
}
variable "opensearch_cluster_software_version" {
  type        = string
  default     = "1.2.4"
  description = "The version of the software the cluster is running."
}

variable "opensearch_cluster_data_node_host_bare_metal_shape" {
  type        = string
  default     = "dataNodeHostBareMetalShape"
  description = " The bare metal shape for the cluster's data nodes."
}
variable "opensearch_cluster_master_node_host_bare_metal_shape" {
  type        = string
  default     = "masterNodeHostBareMetalShape"
  description = "The bare metal shape for the cluster's master nodes."
}
variable "security_mode" {
  type        = string
  default     = "ENFORCING"
  description = "The security mode of the cluster."
}
variable "security_master_user_name" {
  type        = string
  default     = ""
  description = "The name of the master user that are used to manage security config"
}
variable "security_master_user_password_hash" {
  type        = string
  default     = ""
  description = "The password hash of the master user that are used to manage security config"
}
