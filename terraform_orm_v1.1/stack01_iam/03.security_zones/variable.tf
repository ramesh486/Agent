####################
# Common Variables
####################

variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "region" { 
  default = "us-ashburn-1" 
  type = string
  description = "Select the Region"
}

variable "compartment_name" {
    type = string
    default = "gen_compartment"
    description = "Compartment Name to deploy Security Zone"
}

variable compartment_id_in_subtree {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
         "Tags.CostCenter" = "6750"
         "Tags.ResourceType" = "Security Zone"
      }
      freeformTags = {}
  }
}

#####################################
# Security  Zone  Variables
#####################################

variable "security_zone_display_name" {
  type = string
  default = "security-zone"
  description = "Name of the Security Zone"
}

variable "security_recipe_ocid" {
  type = string
  default = ""
  description = "Oracle managed security recipe ocid"
}
