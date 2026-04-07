variable "region" {
  type = string
  description = "Enter the Region"
  default = ""
}

variable "tenancy_ocid" {
  type = string
  description = "Enter the Tenancy OCID."
  default = ""
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
        "Automation_Tags.Automation_ResourceType" = "IP_management"
        }
      freeformTags = {}
  }
}

variable "display_name" {
  type = string
  description = "Display name of the reserved public IP."
  default = "pub_ip_add_1"
}

variable "lifetime" {
  type = string
  description = "Life time of the Public IP."
  default = "RESERVED"
}

