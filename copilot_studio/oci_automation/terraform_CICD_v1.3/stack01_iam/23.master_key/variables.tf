variable "tenancy_ocid" {
  type        = string
  description = "OCID of the tenancy"
  default     = ""
}
variable "region" {
  type        = string
  description = "Region"
  default     = ""
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Master_Key"
        }
      freeformTags = {}
  }
}
variable security_compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable security_compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "key_display_name" {
  type    = string
  default = "Automation key"
}

variable "key_shape_algorithm" {
  type    = string
  default = "AES"
}

variable "key_shape_length" {
  type    = string
  default = "32"
}
variable "key_management_endpoint" {
  type    = string
  default = "" 
}

variable "key_protection_mode" {
  type    = string
  default = "HSM"
}
