# ----------------------------------------
# Prod VCN Module
# ----------------------------------------

module "prod_vcn" {
  source                = "./vcn_module"
  compartment_ocid      = local.network_compartment_ocid
  vcn_display_name      = var.prod_vcn_display_name
  vcn_dns_label         = var.prod_vcn_dns_label
  vcn_cidr_block        = [var.prod_vcn_cidr_block]
  project_tag           = var.project_tag
  
}

# ----------------------------------------
# Prod VCN Security List Module
# ----------------------------------------

module "prod_vcn_seclist_private" {
  source                                                = "./private_security_list_module"
  compartment_ocid                                      = local.network_compartment_ocid
  project_tag                                           = var.project_tag
  security_list_display_name                            = var.prod_vcn_seclist_private_display_name
  destination_security_rules                            = local.prod_vcn_seclist_private_destination_security_rules
  source_security_rules                                 = local.prod_vcn_seclist_private_source_security_rules
  vcn_ocid                                              = module.prod_vcn.vcn_ocid
}

# ----------------------------------------
# Prod VCN Route Table Modules
# ----------------------------------------

module "prod_vcn_routetable_private_appdev" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.network_compartment_ocid 
  project_tag                             = var.project_tag
  route_table_display_name                  = var.prod_vcn_routetable_private_appdev_display_name
  vcn_ocid                                  = module.prod_vcn.vcn_ocid
  route_rules                               = local.prod_vcn_routetable_private_appdev_route_rules
}


module "prod_vcn_routetable_private_dbdev" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.network_compartment_ocid 
  project_tag                             = var.project_tag
  route_table_display_name                  = var.prod_vcn_routetable_private_dbdev_display_name
  vcn_ocid                                  = module.prod_vcn.vcn_ocid
  route_rules                               = local.prod_vcn_routetable_private_dbdev_route_rules               
}

module "prod_vcn_routetable_private_apptst" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.network_compartment_ocid 
  project_tag                             = var.project_tag
  route_table_display_name                  = var.prod_vcn_routetable_private_apptst_display_name
  vcn_ocid                                  = module.prod_vcn.vcn_ocid
  route_rules                               = local.prod_vcn_routetable_private_apptst_route_rules               
}


module "prod_vcn_routetable_private_dbtst" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.network_compartment_ocid 
  project_tag                             = var.project_tag
  route_table_display_name                  = var.prod_vcn_routetable_private_dbtst_display_name
  vcn_ocid                                  = module.prod_vcn.vcn_ocid
  route_rules                               = local.prod_vcn_routetable_private_dbtst_route_rules               
}


# ----------------------------------------
# DRG Attachment Module
# ----------------------------------------

module "prod_vcn_drg_attachment" {
    source                                  = "./drg_attachments"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_ocid                                = module.prod_vcn.vcn_ocid  
    drg_ocid                                = local.drg_ocid
    oci_core_drg_attachment_display_name    = var.prod_vcn_drg_attachment_display_name
}


# ----------------------------------------
#  Service Gateway Module
# ----------------------------------------

module "prod_vcn_servicegateway_private" {
    source                  = "./service_gw_module"
    compartment_ocid        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_ocid                = module.prod_vcn.vcn_ocid
    servicegw_display_name  = var.prod_vcn_servicegateway_private_display_name
}

# ----------------------------------------
#  NAT Gateway Module
# ----------------------------------------

module "prod_vcn_natgateway" {
    source              = "./nat_gw_module"
    compartment_ocid    = local.network_compartment_ocid
    project_tag           = var.project_tag
    vcn_ocid            = module.prod_vcn.vcn_ocid
    natgw_display_name  = var.prod_vcn_natgateway_display_name
    natgw_block_traffic = var.prod_vcn_natgateway_block_traffic
    public_ip_lifetime  = var.prod_vcn_natgateway_public_ip_lifetime
}
module "prod_vcn_intgw" {
    source              = "./internet_gw_module"
    compartment_ocid    = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_ocid            = module.prod_vcn.vcn_ocid
    intgw_display_name  = var.prod_vcn_intgw_display_name
    intgw_enabled = var.prod_vcn_intgw_enabled
   

}
# ----------------------------------------
# AppDev Subnet Configuration Module
# ----------------------------------------

module "appdev_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_subnet_display_name                 = var.appdev_subnet_display_name
    vcn_subnet_dns_label                    = var.appdev_subnet_dns_label
    vcn_subnet_cidr_block                   = var.appdev_subnet_cidr_block
    route_table_ocid                        = module.prod_vcn_routetable_private_appdev.route_table_ocid
    vcn_ocid                                = module.prod_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.appdev_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.appdev_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.prod_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.prod_vcn_seclist_private.security_list_ocid
}


# ----------------------------------------
# AppTst Subnet Configuration Module
# ----------------------------------------

module "apptst_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_subnet_display_name                 = var.apptst_subnet_display_name
    vcn_subnet_dns_label                    = var.apptst_subnet_dns_label
    vcn_subnet_cidr_block                   = var.apptst_subnet_cidr_block
    route_table_ocid                        = module.prod_vcn_routetable_private_apptst.route_table_ocid
    vcn_ocid                                = module.prod_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.apptst_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.apptst_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.prod_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.prod_vcn_seclist_private.security_list_ocid
}



# ----------------------------------------
# DBDev Subnet Configuration Module
# ----------------------------------------

module "dbdev_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_subnet_display_name                 = var.dbdev_subnet_display_name
    vcn_subnet_dns_label                    = var.dbdev_subnet_dns_label
    vcn_subnet_cidr_block                   = var.dbdev_subnet_cidr_block
    route_table_ocid                        = module.prod_vcn_routetable_private_dbdev.route_table_ocid
    vcn_ocid                                = module.prod_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.dbdev_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.dbdev_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.prod_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.prod_vcn_seclist_private.security_list_ocid
}


# ----------------------------------------
# DBTst Subnet Configuration Module
# ----------------------------------------


module "dbtst_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_subnet_display_name                 = var.dbtst_subnet_display_name
    vcn_subnet_dns_label                    = var.dbtst_subnet_dns_label
    vcn_subnet_cidr_block                   = var.dbtst_subnet_cidr_block
    route_table_ocid                        = module.prod_vcn_routetable_private_dbtst.route_table_ocid
    vcn_ocid                                = module.prod_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.dbtst_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.dbtst_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.prod_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.prod_vcn_seclist_private.security_list_ocid
}
