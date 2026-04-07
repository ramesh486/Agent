variable "tenancy_ocid" {
  default     = "" 
  type        = string
  description = "Tenancy OCID"
}

variable "region" {
    type         = string
    default      = ""
    description  = "The region where the BDS instance will be deployed."
}
 
variable "app_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = "network"
    description = "Compartment Name of the Subnet"
}

variable "master_subnet_display_name" {
  type        = string
  default     = ""
  description = "The subnet in which the application is deployed"
}

variable "util_subnet_display_name" {
  type        = string
  default     = ""
  description = "The subnet in which the application is deployed"
}

variable "worker_subnet_display_name" {
  type        = string
  default     = ""
  description = "The subnet in which the application is deployed"
}

variable "display_name" {
    type         = string
    default      = "bds-example"
    description  = "The name of the BDS instance."
}
variable "cluster_admin_password" {
    type         = string
    default      = "S5pdAxQA=="
    description  = "The password for the BDS instance's cluster."
}
variable "is_high_availability" {
    type         = bool
    default      = false
    description  = "Specifies whether the BDS instance has high availability."
}
variable "is_secure" {
    type         = bool
    default      = false
    description  = "Specifies whether the BDS instance is secure."
}
variable "cluster_version" {
    type         = string
    default      = "CDH6"
    description  = "The version of the BDS cluster."
}
variable "master_node_shape" {
    type         = string
    default      = "VM.Standard2.4"
    description  = "The shape  for the master node in the BDS cluster."
}

variable "master_node_block_volume_size_in_gbs" {
    type         = number
    default      = 150
    description  = "The block volume size in gigabytes for the master node in the BDS cluster."
}

variable "master_node_number_of_nodes" {
    type         = number
    default      = 1
    description  = "The number of nodes in the master node group of the BDS cluster."
}

variable "util_node_shape" {
    type         = string
    default      = "VM.Standard2.4"
    description  = "The shape  for the utility nodes in the BDS cluster."
}

variable "util_node_shape_block_volume_size_in_gbs" {
    type         = number
    default      = 150
    description  = "The block volume size in gigabytes for the utility nodes in the BDS cluster."
}
variable "util_node_shape_number_of_nodes" {
    type         = number
    default      = 1
    description  = "The number of nodes in the utility node group of the BDS cluster."
}

variable "worker_node_shape" {
    type         = string
    default      = "VM.Standard2.1"
    description  = "The shape for the worker nodes in the BDS cluster."
}


variable "worker_node_shape_block_volume_size_in_gbs" {
    type         = number
    default      = 150
    description  = "The block volume size in gigabytes for the worker nodes in the BDS cluster."
}
variable "worker_node_number_of_nodes" {
    type         = number
    default      = 3
    description  = "The number of nodes in the worker node group of the BDS cluster."
}
variable "cluster_public_key" {
    type         = string
    default      = ""
    description  = "Provide the public key in OpenSSH format."
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "data_lake_bigdata"
        }
      freeformTags = {}
  }
}


