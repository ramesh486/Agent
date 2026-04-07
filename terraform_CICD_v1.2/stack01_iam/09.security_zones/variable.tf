####################
# Common Variables
####################

variable "tenancy_ocid" {
  type        = string
  description = "Tenancy OCID"
}

variable "region" { 
  type        = string
  description = "Select the Region"
}

variable "compartment_name" {
  type        = string
  default     = ""
  description = "Compartment Name to deploy Security Zone"
}

variable compartment_id_in_subtree {
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
        "Automation_Tags.Automation_ResourceType" = "Security Zone"
        }
      freeformTags = {}
  }
}

#####################################
# Security  Zone  Variables
#####################################

variable "security_zone_display_name" {
  type        = string
  default     = "security-zone"
  description = "Name of the Security Zone"
}

variable "security_recipe_ocid" {
  type        = string
  default     = ""
  description = "OCID of the Security Recipe"
}
