##############################
### Common Variables
##############################

variable "compartment_ocid" {}
variable "region" {
  type         = string
  default      = "us-ashburn-1"
  description  = "Select the Region"
}
variable "tenancy_ocid" {}
variable "project_tag" {
  type        = map
  description = "Tags to be Assigned to the Resources"
  default = {
    definedTags = {}
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

