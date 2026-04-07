variable "compartment_ocid" {}
variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
variable network_address_list_display_name {}
variable network_address_list_type {}
variable network_address_list_vcn_addresses_addresses {}
variable vcn_ocid {}
