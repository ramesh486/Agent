# ----------------------------------------
# Prod VCN Module
# ----------------------------------------

module "vcn" {
  source                = "./vcn_module"
  compartment_ocid      = local.compartment_ocid
  vcn_display_name      = var.vcn_display_name
  vcn_dns_label         = var.vcn_dns_label
  vcn_cidr_block        = [var.vcn_cidr_block]
  definedTags           = var.project_tag.definedTags
  freeformTags          = var.project_tag.freeformTags
}

# ----------------------------------------
# Prod VCN Security List Module
# ----------------------------------------

module "vcn_seclist_private" {
  source                                                = "./private_security_list_module"
  compartment_ocid                                      = local.compartment_ocid
  definedTags                                           = var.project_tag.definedTags
  freeformTags                                          = var.project_tag.freeformTags
  security_list_display_name                            = var.vcn_seclist_private_display_name
  destination_security_rules                            = local.vcn_seclist_private_destination_security_rules
  source_security_rules                                 = local.vcn_seclist_private_source_security_rules
  vcn_ocid                                              = module.vcn.vcn_ocid
}

# ----------------------------------------
# Prod VCN Route Table Modules
# ----------------------------------------

module "vcn_routetable_private_appdev" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.compartment_ocid 
  definedTags                               = var.project_tag.definedTags
  freeformTags                              = var.project_tag.freeformTags
  route_table_display_name                  = var.vcn_routetable_private_appdev_display_name
  vcn_ocid                                  = module.vcn.vcn_ocid
  route_rules                               = local.vcn_routetable_private_appdev_route_rules
}


module "vcn_routetable_private_dbdev" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.compartment_ocid 
  definedTags                               = var.project_tag.definedTags
  freeformTags                              = var.project_tag.freeformTags
  route_table_display_name                  = var.vcn_routetable_private_dbdev_display_name
  vcn_ocid                                  = module.vcn.vcn_ocid
  route_rules                               = local.vcn_routetable_private_dbdev_route_rules               
}

module "vcn_routetable_private_apptst" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.compartment_ocid 
  definedTags                               = var.project_tag.definedTags
  freeformTags                              = var.project_tag.freeformTags
  route_table_display_name                  = var.vcn_routetable_private_apptst_display_name
  vcn_ocid                                  = module.vcn.vcn_ocid
  route_rules                               = local.vcn_routetable_private_apptst_route_rules               
}


module "vcn_routetable_private_dbtst" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.compartment_ocid 
  definedTags                               = var.project_tag.definedTags
  freeformTags                              = var.project_tag.freeformTags
  route_table_display_name                  = var.vcn_routetable_private_dbtst_display_name
  vcn_ocid                                  = module.vcn.vcn_ocid
  route_rules                               = local.vcn_routetable_private_dbtst_route_rules               
}


# ----------------------------------------
# DRG Attachment Module
# ----------------------------------------

# module "vcn_drg_attachment" {
#     source                                  = "./drg_attachments"
#     compartment_ocid                        = local.compartment_ocid
#     definedTags                             = var.project_tag.definedTags
#     freeformTags                            = var.project_tag.freeformTags
#     vcn_ocid                                = module.vcn.vcn_ocid  
#     drg_ocid                                = local.drg_ocid
#     oci_core_drg_attachment_display_name    = var.vcn_drg_attachment_display_name
# }


# ----------------------------------------
#  Service Gateway Module
# ----------------------------------------

module "vcn_servicegateway_private" {
    source                  = "./service_gw_module"
    compartment_ocid        = local.compartment_ocid
    definedTags             = var.project_tag.definedTags
    freeformTags            = var.project_tag.freeformTags
    vcn_ocid                = module.vcn.vcn_ocid
    servicegw_display_name  = var.vcn_servicegateway_private_display_name
}

# ----------------------------------------
#  NAT Gateway Module
# ----------------------------------------

module "vcn_natgateway" {
    source              = "./nat_gw_module"
    compartment_ocid    = local.compartment_ocid
    definedTags         = var.project_tag.definedTags
    freeformTags        = var.project_tag.freeformTags
    vcn_ocid            = module.vcn.vcn_ocid
    natgw_display_name  = var.vcn_natgateway_display_name
    natgw_block_traffic = var.vcn_natgateway_block_traffic
    public_ip_lifetime  = var.vcn_natgateway_public_ip_lifetime
}
module "vcn_intgw" {
    source              = "./internet_gw_module"
    compartment_ocid    = local.compartment_ocid
    definedTags         = var.project_tag.definedTags
    freeformTags        = var.project_tag.freeformTags
    vcn_ocid            = module.vcn.vcn_ocid
    intgw_display_name  = var.vcn_intgw_display_name
    intgw_enabled = var.vcn_intgw_enabled
   

}
# ----------------------------------------
# AppDev Subnet Configuration Module
# ----------------------------------------

module "appdev_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.appdev_project_tag.definedTags
    freeformTags                            = var.appdev_project_tag.freeformTags
    vcn_subnet_display_name                 = var.appdev_subnet_display_name
    vcn_subnet_dns_label                    = var.appdev_subnet_dns_label
    vcn_subnet_cidr_block                   = var.appdev_subnet_cidr_block
    route_table_ocid                        = module.vcn_routetable_private_appdev.route_table_ocid
    vcn_ocid                                = module.vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.appdev_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.appdev_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.vcn_seclist_private.security_list_ocid
}


# ----------------------------------------
# AppTst Subnet Configuration Module
# ----------------------------------------

module "apptst_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.apptst_project_tag.definedTags
    freeformTags                            = var.apptst_project_tag.freeformTags
    vcn_subnet_display_name                 = var.apptst_subnet_display_name
    vcn_subnet_dns_label                    = var.apptst_subnet_dns_label
    vcn_subnet_cidr_block                   = var.apptst_subnet_cidr_block
    route_table_ocid                        = module.vcn_routetable_private_apptst.route_table_ocid
    vcn_ocid                                = module.vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.apptst_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.apptst_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.vcn_seclist_private.security_list_ocid
}



# ----------------------------------------
# DBDev Subnet Configuration Module
# ----------------------------------------

module "dbdev_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.dbdev_project_tag.definedTags
    freeformTags                            = var.dbdev_project_tag.freeformTags
    vcn_subnet_display_name                 = var.dbdev_subnet_display_name
    vcn_subnet_dns_label                    = var.dbdev_subnet_dns_label
    vcn_subnet_cidr_block                   = var.dbdev_subnet_cidr_block
    route_table_ocid                        = module.vcn_routetable_private_dbdev.route_table_ocid
    vcn_ocid                                = module.vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.dbdev_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.dbdev_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.vcn_seclist_private.security_list_ocid
}


# ----------------------------------------
# DBTst Subnet Configuration Module
# ----------------------------------------


module "dbtst_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.compartment_ocid
    definedTags                             = var.dbtst_project_tag.definedTags
    freeformTags                            = var.dbtst_project_tag.freeformTags
    vcn_subnet_display_name                 = var.dbtst_subnet_display_name
    vcn_subnet_dns_label                    = var.dbtst_subnet_dns_label
    vcn_subnet_cidr_block                   = var.dbtst_subnet_cidr_block
    route_table_ocid                        = module.vcn_routetable_private_dbtst.route_table_ocid
    vcn_ocid                                = module.vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.dbtst_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.dbtst_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.vcn_seclist_private.security_list_ocid
}
