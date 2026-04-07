##############################
### Common Variables
##############################

variable "tenancy_ocid" {}

variable "region" {
  type         = string
  default      = ""
  description  = "Select the Region"
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
        "Automation_Tags.Automation_ResourceType" = "WAF_Edgepolicy"
        }
      freeformTags = {}
  }
}
##############################
### IP Address Lists Variables
##############################

variable "address_list_addresses" {
  type         = list
  default      = ["0.0.0.0/16", "192.168.0.0/20"]
  description  = "A list of IP addresses."
}

variable "address_list_display_name" {
  type         = string
  default      = "address-list"
  description  = "Display name for the address list."
}

