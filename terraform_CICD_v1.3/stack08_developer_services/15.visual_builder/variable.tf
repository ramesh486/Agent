####################################
#  Common variables
####################################

variable "region" {
  type = string 
  default = ""
  description = "Provide region"
}

variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy ocid"  
  default     = "" 
}
variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}
variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy the resource"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "visual_builder"
        }
      freeformTags = {}
  }
}
####################################
#  Visual Builder variables
####################################

variable "idcs_open_id" {
  type = string
  default = ""
  description = "Provide idcs open id"
}

variable "vb_instance_consumption_model" {
  type = string
  default = "UCM"
  description = "Provide vb instance consumption model"
}

variable "custom_endpoint_host_name" {
  type = string
  default = "hostname.com"
  description = "Provide custom endpoint host name"
}

variable "display_name" {
  type = string
  default = "vb_instance"
  description = "The display name of vb instance"
}

variable "is_visual_builder_enabled" {
  type = bool
  default = true
  description = "Is visual builder enabled"
}

variable "node_count" {
  type = number
  default = 1
  description = "Provide node count"
}
