################
#Cluster network
################

variable "tenancy_ocid" {
  type        = string
  default     = ""
  description = "give here tenancy ocid"

}
variable "region" {
  type        = string
  default     = "us-ashburn-1"
  description = "give here region"
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
  default     = ""
  description = "Compartment Name of the Subnet"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Cluster_network"
        }
      freeformTags = {}
  }
}
#################
#Cluster network
#################

variable "instance_configuration_display_name" {
  type        = string
  default     = "TestInstanceConfiguration"
  description = "select the instance configuration Name"
}

variable "cluster_network_instance_pools_size" {
  type        = number
  default     = "1"
  description = "cluster network instance pools size"

}

variable "cluster_network_instance_pools_display_name" {
  type        = string
  default     = "cluster network instance pool"
  description = "cluster network instance pools display name"

}

variable subnet_display_name{
  type        = string
  default     = ""
  description = "Name of the Subnet"
}
