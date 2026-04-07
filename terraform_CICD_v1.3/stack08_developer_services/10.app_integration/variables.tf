################################################
  # Common variables
################################################

variable "region" {
  type        = string
  description = "Provide Region"
  default     = ""
}

variable "tenancy_ocid" {
  type        = string
  description = "Provide Tenancy OCID"
  default     = ""
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "App_integration"
        }
      freeformTags = {}
  }
}

################################################
  # Integration Instance Configuration variables
################################################

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

variable "consumption_model" {
  type        = string
  description = "Enter Consumption model"
  default     = "UCM"
}

variable "display_name" {
  type        = string
  description = "Enter Instance Display Name"
  default     = "integration_instance"
}

variable "idcs_at" {
  type        = string
  description = "Access token value"
  default     = ""
}

variable "integration_instance_type" {
  type        = string
  description = "Integration Instanse Type"
  default     = "ENTERPRISE"
}

variable "is_byol" {
  type        = bool
  description = "Is BYOL?"
  default     =  false
}

variable "is_file_server_enabled" {
  type        = bool
  description = "Is file server enabled?"
  default     = false
}

variable "is_visual_builder_enabled" {
  type        = bool
  description = "Is visual builder enabled?"
  default     = true
}

variable "message_packs" {
  type        = number
  description = "Specify Message Packs"
  default     = 1
}

