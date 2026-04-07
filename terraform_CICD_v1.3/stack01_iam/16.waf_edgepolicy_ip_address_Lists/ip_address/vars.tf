variable "compartment_ocid" {}
variable address_list_addresses {}
variable address_list_display_name {}
variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}
