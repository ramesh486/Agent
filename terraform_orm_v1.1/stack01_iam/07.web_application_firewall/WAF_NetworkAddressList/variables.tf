##############################
### Common Variables
##############################

variable "compartment_ocid" {}
variable "region" {}
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
### IP Address Variables
##############################

variable network_ip_address_list_display_name {
    default = "Network IP Address List2"
}
variable network_ip_address_list_type {
    default = "ADDRESSES"
}
variable network_ip_address_list_address {
    default = "10.0.0.0/24"
}

##############################
### VCN Address Variables
##############################

variable network_vcn_address_list_display_name {
    default = "Network VCN Address List1"
}
variable network_vcn_address_list_type {
    default = "VCN_ADDRESSES"
}
variable network_address_list_vcn_addresses_addresses {
    default = "10.0.0.0/16"
}
variable vcn_ocid {}
