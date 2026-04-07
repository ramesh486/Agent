variable "compartment_ocid" {}
variable "definedTags" {
  type    = map
  default = {}
}
variable "freeformTags" {
  type    = map
  default = {}
}
variable network_address_list_display_name {}
variable network_address_list_type {}
variable network_address_list_addresses {
  default = ["",]
}
