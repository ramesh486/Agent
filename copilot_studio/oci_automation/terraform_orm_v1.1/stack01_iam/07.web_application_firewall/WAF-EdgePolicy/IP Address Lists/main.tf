
##############################
###  IP Address Lists
##############################

module "ip_address_lists" {
source                                           = "./ip_address"
  compartment_ocid                               = var.compartment_ocid
  definedTags                                    = var.project_tag.definedTags
  freeformTags                                   = var.project_tag.freeformTags
  address_list_addresses                         = var.address_list_addresses
  address_list_display_name                      = var.address_list_display_name
}