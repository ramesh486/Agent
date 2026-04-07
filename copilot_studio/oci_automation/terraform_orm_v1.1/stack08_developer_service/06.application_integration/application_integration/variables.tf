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
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

## compartment name where  instance deployed ####

variable "compartment_ocid" {
  type        = string
  default     = ""
  description = "Compartment OCID to deploy the Instance"
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
  default     = true
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

