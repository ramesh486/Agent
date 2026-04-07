################################################
  # Common variables
################################################

variable "region" {
    type        = string
  description   = "Enter Region"  
 	default     = ""  
}
variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
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
        "Automation_Tags.Automation_ResourceType" = "App_integration_process"
        }
      freeformTags = {}
  }
}
################################################
  # App Integration Process variables
################################################

variable "idcs_access_token" {
    type        = string
    default     = ""
    description = "Enter idcs access token"
}

variable "consumption_model" {
    type        = string
    default     = "UCM"
    description = "Enter consumption model"
}

variable "display_name" {
    type        = string
    default     = "test_opa_instance"
    description = "Enter display name"
}

variable "metering_type" {
    type        = string
    default     = "EXECUTION_PACK"
    description = "Enter metering type"
}

variable "shape_name" {
    type        = string
    default     = "PRODUCTION"
    description = "Enter shape of the instance"
}
