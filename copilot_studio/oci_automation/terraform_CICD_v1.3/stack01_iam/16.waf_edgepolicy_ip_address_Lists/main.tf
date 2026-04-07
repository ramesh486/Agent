
##############################
###  IP Address Lists
##############################

module "ip_address_lists" {
source                        = "./ip_address"
  compartment_ocid            = local.compartment_ocid
  address_list_addresses      = var.address_list_addresses
  address_list_display_name   = var.address_list_display_name
  project_tag                 = var.project_tag
}