###########################################
# Common Variables
###########################################
variable "tenancy_ocid" {
type = string
description = "Target Tenancy OCID"
default = ""
}
variable "region" {
type = string
description = "Region"
default = "us-ashburn-1"
}
variable compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "DNS"}
      freeformTags = {}
  }
}
variable "scope" {
    default = "PRIVATE"
}

variable "dns_view_display_name" {
    type = string
    default = "dns_view"
}
