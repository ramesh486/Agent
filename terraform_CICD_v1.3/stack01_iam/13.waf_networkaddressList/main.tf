##############################
### IP Address Variables
##############################

module "network_ip_address_list" {
source                                = "./network_ip_address_list"
  compartment_ocid                    = local.security_compartment_ocid
  project_tag                         = var.project_tag
  network_address_list_display_name   = var.network_ip_address_list_display_name
  network_address_list_type           = var.network_ip_address_list_type
  network_address_list_addresses      = var.network_ip_address_list_address
}

##############################
### VCN Address Variables
##############################

module "network_vcn_address_list" {
source                                           = "./network_vcn_address_list"
  compartment_ocid                               = local.security_compartment_ocid
  project_tag                                    = var.project_tag
  network_address_list_display_name              = var.network_vcn_address_list_display_name
  network_address_list_type                      = var.network_vcn_address_list_type
  network_address_list_vcn_addresses_addresses   = var.network_address_list_vcn_addresses_addresses
  vcn_ocid                                       = local.vcn_ocid
}

