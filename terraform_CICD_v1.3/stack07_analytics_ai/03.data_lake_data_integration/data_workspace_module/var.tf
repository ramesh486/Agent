variable "compartment_ocid"{}
variable "description"{}
variable "display_name"{}
variable "is_private_network_enabled"{}
variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

