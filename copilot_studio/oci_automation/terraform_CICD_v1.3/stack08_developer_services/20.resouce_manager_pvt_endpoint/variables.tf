#####################################
# Common variables
#####################################

variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}
variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name"
 }

variable "app_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name"
 }

variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "resouce_manager_pvt_endpoint"
        }
      freeformTags = {}
  }
}

#####################################
# private end point variables
#####################################


variable "private_endpoint_display_name" {
  type = string
  default = "private_endpoint"
  description = "Name for private endpoint"
}

variable "subnet_display_name" {
  type = string
  default = ""
  description = "Provide Subnet Name"
}

variable "vcn_display_name" {
  type = string
  default = ""
  description = "Provide VCN Name"
}

variable "private_endpoint_is_used_with_configuration_source_provider" {
  type = bool
  default = true
  description = "Private endpoint to be used with a configuration source provider."
}