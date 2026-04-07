# ----------------------------------------
# Prod HUB VCN Module
# ----------------------------------------

module "prod_hub_vcn" {
  source                = "./vcn_module"
  compartment_ocid      = local.compartment_ocid
  vcn_display_name      = var.prod_hub_vcn_display_name
  vcn_dns_label         = var.prod_hub_vcn_dns_label
  vcn_cidr_block        = [var.prod_hub_vcn_cidr_block]
  definedTags           = var.project_tag.definedTags
  freeformTags          = var.project_tag.freeformTags
}

# ----------------------------------------
# Prod HUB VCN Security List Module
# ----------------------------------------

module "prod_hub_vcn_seclist_private" {
  source                                                = "./private_security_list_module"
  compartment_ocid                                      = local.compartment_ocid
  definedTags                                           = var.project_tag.definedTags
  freeformTags                                          = var.project_tag.freeformTags
  security_list_display_name                            = var.prod_hub_vcn_seclist_private_display_name
  destination_security_rules                            = local.prod_hub_vcn_seclist_private_destination_security_rules
  source_security_rules                                 = local.prod_hub_vcn_seclist_private_source_security_rules
  vcn_ocid                                              = module.prod_hub_vcn.vcn_ocid
}
#-----------------------------------------
# Prod Subnet Security List Module
#-----------------------------------------



module "prod_hub_vcn_seclist_public_nlb" {
  source                                                = "./private_security_list_module"
  compartment_ocid                                      = local.compartment_ocid
  definedTags                                           = var.project_tag.definedTags
  freeformTags                                          = var.project_tag.freeformTags
  security_list_display_name                            = var.prod_hub_vcn_seclist_public_nlb_display_name
  destination_security_rules                            = local.prod_hub_vcn_seclist_public_nlb_destination_security_rules
  source_security_rules                                 = local.prod_hub_vcn_seclist_public_nlb_source_security_rules
  vcn_ocid                                              = module.prod_hub_vcn.vcn_ocid
}

# ----------------------------------------
# Prod HUB VCN Route Table Modules
# ----------------------------------------

module "prod_hub_vcn_routetable_private_untrust" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.compartment_ocid 
  definedTags                               = var.project_tag.definedTags
  freeformTags                              = var.project_tag.freeformTags
  route_table_display_name                  = var.prod_hub_vcn_routetable_private_untrust_display_name
  vcn_ocid                                  = module.prod_hub_vcn.vcn_ocid
  route_rules                               = local.prod_hub_vcn_routetable_private_untrust_route_rules
}


module "prod_hub_vcn_routetable_private_management" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.compartment_ocid 
  definedTags                               = var.project_tag.definedTags
  freeformTags                              = var.project_tag.freeformTags
  route_table_display_name                  = var.prod_hub_vcn_routetable_private_management_display_name
  vcn_ocid                                  = module.prod_hub_vcn.vcn_ocid
  route_rules                               = local.prod_hub_vcn_routetable_private_management_route_rules               
}

module "prod_hub_vcn_routetable_private_trust" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.compartment_ocid 
  definedTags                               = var.project_tag.definedTags
  freeformTags                              = var.project_tag.freeformTags
  route_table_display_name                  = var.prod_hub_vcn_routetable_private_trust_display_name
  vcn_ocid                                  = module.prod_hub_vcn.vcn_ocid
  route_rules                               = local.prod_hub_vcn_routetable_private_trust_route_rules               
}


module "prod_hub_vcn_routetable_public_nlb" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.compartment_ocid 
  definedTags                               = var.project_tag.definedTags
  freeformTags                              = var.project_tag.freeformTags
  route_table_display_name                  = var.prod_hub_vcn_routetable_public_nlb_display_name
  vcn_ocid                                  = module.prod_hub_vcn.vcn_ocid
  route_rules                               = local.prod_hub_vcn_routetable_public_nlb_route_rules               
}


# ----------------------------------------
# DRG Attachment Module
# ----------------------------------------

module "prod_hub_vcn_drg_attachment" {
    source                                  = "./drg_attachments"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.project_tag.definedTags
    freeformTags                            = var.project_tag.freeformTags
    vcn_ocid                                = module.prod_hub_vcn.vcn_ocid  
    drg_ocid                                = local.drg_ocid
    oci_core_drg_attachment_display_name    = var.prod_hub_vcn_drg_attachment_display_name
}


# ----------------------------------------
#  Service Gateway Module
# ----------------------------------------

module "prod_hub_vcn_servicegateway_private" {
    source                  = "./service_gw_module"
    compartment_ocid        = local.compartment_ocid
    definedTags             = var.project_tag.definedTags
    freeformTags            = var.project_tag.freeformTags
    vcn_ocid                = module.prod_hub_vcn.vcn_ocid
    servicegw_display_name  = var.prod_hub_vcn_servicegateway_private_display_name
}

# ----------------------------------------
#  NAT Gateway Module
# ----------------------------------------

module "prod_hub_vcn_natgateway" {
    source              = "./nat_gw_module"
    compartment_ocid    = local.compartment_ocid
    definedTags         = var.project_tag.definedTags
    freeformTags        = var.project_tag.freeformTags
    vcn_ocid            = module.prod_hub_vcn.vcn_ocid
    natgw_display_name  = var.prod_hub_vcn_natgateway_display_name
    natgw_block_traffic = var.prod_hub_vcn_natgateway_block_traffic
    public_ip_lifetime  = var.prod_hub_vcn_natgateway_public_ip_lifetime
}
# ----------------------------------------
#  Internet Gateway Module
# ----------------------------------------

module "prod_hub_vcn_intgw" {
    source              = "./internet_gw_module"
    compartment_ocid    = local.compartment_ocid
    definedTags         = var.project_tag.definedTags
    freeformTags        = var.project_tag.freeformTags
    vcn_ocid            = module.prod_hub_vcn.vcn_ocid
    intgw_display_name  = var.prod_hub_vcn_intgw_display_name
    intgw_enabled = var.prod_hub_vcn_intgw_enabled
   

}

# ----------------------------------------
# Prod NLB Public Subnet Configuration Module
# ----------------------------------------

module "prod_nlb_pub_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.prod_nlb_pub_subnet_project_tag.definedTags
    freeformTags                            = var.prod_nlb_pub_subnet_project_tag.freeformTags
    vcn_subnet_display_name                 = var.prod_nlb_pub_subnet_display_name
    vcn_subnet_dns_label                    = var.prod_nlb_pub_subnet_dns_label
    vcn_subnet_cidr_block                   = var.prod_nlb_pub_subnet_cidr_block
    route_table_ocid                        = module.prod_hub_vcn_routetable_public_nlb.route_table_ocid
    vcn_ocid                                = module.prod_hub_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.prod_nlb_pub_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.prod_nlb_pub_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.prod_hub_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.prod_hub_vcn_seclist_public_nlb.security_list_ocid
}


# ----------------------------------------
# Prod Untrust Subnet Configuration Module
# ----------------------------------------

module "prod_untrust_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.prod_untrust_project_tag.definedTags
    freeformTags                            = var.prod_untrust_project_tag.freeformTags
    vcn_subnet_display_name                 = var.prod_untrust_subnet_display_name
    vcn_subnet_dns_label                    = var.prod_untrust_subnet_dns_label
    vcn_subnet_cidr_block                   = var.prod_untrust_subnet_cidr_block
    route_table_ocid                        = module.prod_hub_vcn_routetable_private_untrust.route_table_ocid
    vcn_ocid                                = module.prod_hub_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.prod_untrust_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.prod_untrust_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.prod_hub_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.prod_hub_vcn_seclist_private.security_list_ocid
}



# ----------------------------------------
# Prod Management Subnet Configuration Module
# ----------------------------------------

module "prod_management_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.prod_management_project_tag.definedTags
    freeformTags                            = var.prod_management_project_tag.freeformTags
    vcn_subnet_display_name                 = var.prod_management_subnet_display_name
    vcn_subnet_dns_label                    = var.prod_management_subnet_dns_label
    vcn_subnet_cidr_block                   = var.prod_management_subnet_cidr_block
    route_table_ocid                        = module.prod_hub_vcn_routetable_private_management.route_table_ocid
    vcn_ocid                                = module.prod_hub_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.prod_management_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.prod_management_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.prod_hub_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.prod_hub_vcn_seclist_private.security_list_ocid
}


# ----------------------------------------
# Prod Trust Subnet Configuration Module
# ----------------------------------------


module "prod_trust_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.prod_trust_project_tag.definedTags
    freeformTags                            = var.prod_trust_project_tag.freeformTags
    vcn_subnet_display_name                 = var.prod_trust_subnet_display_name
    vcn_subnet_dns_label                    = var.prod_trust_subnet_dns_label
    vcn_subnet_cidr_block                   = var.prod_trust_subnet_cidr_block
    route_table_ocid                        = module.prod_hub_vcn_routetable_private_trust.route_table_ocid
    vcn_ocid                                = module.prod_hub_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.prod_trust_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.prod_trust_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.prod_hub_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.prod_hub_vcn_seclist_private.security_list_ocid
}
