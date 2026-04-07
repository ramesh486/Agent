#####################
## Common Variables
#####################

variable "region" {
  type        = string
  description = "region"  
  default     = "us-ashburn-1"
}

variable "compartment_ocid" {
  type        = string
  description = ""  
  default     = "compartment ocid"
}

#####################
## network sources
#####################

variable "network_source_description" {
  type        = string
  description = "The description for the network source."  
  default     = "corporate ip ranges to be used for ip based authorization"
}

variable "network_source_name" {
  type        = string
  description = "The name for the network source."
  default     = "corpnet"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter"   = "Automation",
        "Automation_Tags.Automation_ResourceType" = "network sources"}
      freeformTags = {}
  }
}

