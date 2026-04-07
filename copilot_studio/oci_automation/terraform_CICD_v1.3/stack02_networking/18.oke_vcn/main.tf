# ----------------------------------------
# Prod VCN Module
# ----------------------------------------

module "oke_vcn" {
  source                = "./vcn_module"
  compartment_ocid      = local.network_compartment_ocid
  vcn_display_name      = var.oke_vcn_display_name
  vcn_dns_label         = var.oke_vcn_dns_label
  vcn_cidr_block        = [var.oke_vcn_cidr_block]
  project_tag           = var.project_tag
  
}

# ----------------------------------------
# Prod VCN Security List Module
# ----------------------------------------


module "oke_vcn_seclist_private_k8s_api" {
  source                                                = "./private_security_list_module"
  compartment_ocid                                      = local.network_compartment_ocid
  project_tag                                           = var.project_tag
  security_list_display_name                            = var.oke_vcn_seclist_private_k8s_api_display_name
  destination_security_rules                            = local.oke_vcn_seclist_private_k8s_api_destination_security_rules
  source_security_rules                                 = local.oke_vcn_seclist_private_k8s_api_source_security_rules
  vcn_ocid                                              = module.oke_vcn.vcn_ocid
}

module "oke_vcn_seclist_loadbalancer" {
  source                                                = "./private_security_list_module"
  compartment_ocid                                      = local.network_compartment_ocid
  project_tag                                           = var.project_tag
  security_list_display_name                            = var.oke_vcn_seclist_loadbalancer_display_name
  destination_security_rules                            = local.oke_vcn_seclist_loadbalancer_destination_security_rules
  source_security_rules                                 = local.oke_vcn_seclist_loadbalancer_source_security_rules
  vcn_ocid                                              = module.oke_vcn.vcn_ocid
}

module "oke_vcn_seclist_private_workernode" {
  source                                                = "./private_security_list_module"
  compartment_ocid                                      = local.network_compartment_ocid
  project_tag                                           = var.project_tag
  security_list_display_name                            = var.oke_vcn_seclist_private_workernode_display_name
  destination_security_rules                            = local.oke_vcn_seclist_private_workernode_destination_security_rules
  source_security_rules                                 = local.oke_vcn_seclist_private_workernode_source_security_rules
  vcn_ocid                                              = module.oke_vcn.vcn_ocid
}


module "oke_vcn_seclist_private_management" {
  source                                                = "./private_security_list_module"
  compartment_ocid                                      = local.network_compartment_ocid
  project_tag                                           = var.project_tag
  security_list_display_name                            = var.oke_vcn_seclist_private_management_display_name
  destination_security_rules                            = local.oke_vcn_seclist_private_management_destination_security_rules
  source_security_rules                                 = local.oke_vcn_seclist_private_management_source_security_rules
  vcn_ocid                                              = module.oke_vcn.vcn_ocid
}


# ----------------------------------------
# Prod VCN Route Table Modules
# ----------------------------------------

module "oke_vcn_routetable_private_k8s_api" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.network_compartment_ocid 
  project_tag                             = var.project_tag
  route_table_display_name                  = var.oke_vcn_routetable_private_k8s_api_display_name
  vcn_ocid                                  = module.oke_vcn.vcn_ocid
  route_rules                               = local.oke_vcn_routetable_private_k8s_api_route_rules
}


module "oke_vcn_routetable_loadbalancer" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.network_compartment_ocid 
  project_tag                               = var.project_tag
  route_table_display_name                  = var.oke_vcn_routetable_loadbalancer_display_name
  vcn_ocid                                  = module.oke_vcn.vcn_ocid
  route_rules                               = local.oke_vcn_routetable_loadbalancer_route_rules               
}

module "oke_vcn_routetable_private_workernode" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.network_compartment_ocid 
  project_tag                             = var.project_tag
  route_table_display_name                  = var.oke_vcn_routetable_private_workernode_display_name
  vcn_ocid                                  = module.oke_vcn.vcn_ocid
  route_rules                               = local.oke_vcn_routetable_private_workernode_route_rules               
}


module "oke_vcn_routetable_private_management" {
  source                                    = "./private_route_table_module"
  compartment_ocid                          = local.network_compartment_ocid 
  project_tag                             = var.project_tag
  route_table_display_name                  = var.oke_vcn_routetable_private_management_display_name
  vcn_ocid                                  = module.oke_vcn.vcn_ocid
  route_rules                               = local.oke_vcn_routetable_private_management_route_rules               
}


# ----------------------------------------
# DRG Attachment Module
# ----------------------------------------

# module "oke_vcn_drg_attachment" {
#     source                                  = "./drg_attachments"
#     compartment_ocid                        = local.network_compartment_ocid
#     project_tag                             = var.project_tag
#     vcn_ocid                                = module.oke_vcn.vcn_ocid  
#     drg_ocid                                = local.drg_ocid
#     oci_core_drg_attachment_display_name    = var.oke_vcn_drg_attachment_display_name
# }


# ----------------------------------------
#  Service Gateway Module
# ----------------------------------------

module "oke_vcn_servicegateway_private" {
    source                            = "./service_gw_module"
    compartment_ocid                  = local.network_compartment_ocid
    project_tag                       = var.project_tag
    vcn_ocid                          = module.oke_vcn.vcn_ocid
    servicegw_display_name            = var.oke_vcn_servicegateway_private_display_name
    service_gateway_service_ocid      = local.service_gateway_service_ocid
}

# ----------------------------------------
#  NAT Gateway Module
# ----------------------------------------

module "oke_vcn_natgateway" {
    source              = "./nat_gw_module"
    compartment_ocid    = local.network_compartment_ocid
    project_tag           = var.project_tag
    vcn_ocid            = module.oke_vcn.vcn_ocid
    natgw_display_name  = var.oke_vcn_natgateway_display_name
    natgw_block_traffic = var.oke_vcn_natgateway_block_traffic
    public_ip_lifetime  = var.oke_vcn_natgateway_public_ip_lifetime
}

module "oke_vcn_intgw" {
    source              = "./internet_gw_module"
    compartment_ocid    = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_ocid            = module.oke_vcn.vcn_ocid
    intgw_display_name  = var.oke_vcn_intgw_display_name
    intgw_enabled = var.oke_vcn_intgw_enabled
   

}
# ----------------------------------------
# K8SAPI Subnet Configuration Module
# ----------------------------------------

module "k8s_api_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_subnet_display_name                 = var.k8s_api_subnet_display_name
    vcn_subnet_dns_label                    = var.k8s_api_subnet_dns_label
    vcn_subnet_cidr_block                   = var.k8s_api_subnet_cidr_block
    route_table_ocid                        = module.oke_vcn_routetable_private_k8s_api.route_table_ocid
    vcn_ocid                                = module.oke_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.k8s_api_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.k8s_api_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.oke_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.oke_vcn_seclist_private_k8s_api.security_list_ocid
}


# ----------------------------------------
# loadbalancer Subnet Configuration Module
# ----------------------------------------

module "loadbalancer_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_subnet_display_name                 = var.loadbalancer_subnet_display_name
    vcn_subnet_dns_label                    = var.loadbalancer_subnet_dns_label
    vcn_subnet_cidr_block                   = var.loadbalancer_subnet_cidr_block
    route_table_ocid                        = module.oke_vcn_routetable_loadbalancer.route_table_ocid
    vcn_ocid                                = module.oke_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.loadbalancer_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.loadbalancer_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.oke_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.oke_vcn_seclist_loadbalancer.security_list_ocid
}



# ----------------------------------------
# workernode Subnet Configuration Module
# ----------------------------------------

module "workernode_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_subnet_display_name                 = var.workernode_subnet_display_name
    vcn_subnet_dns_label                    = var.workernode_subnet_dns_label
    vcn_subnet_cidr_block                   = var.workernode_subnet_cidr_block
    route_table_ocid                        = module.oke_vcn_routetable_private_workernode.route_table_ocid
    vcn_ocid                                = module.oke_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.workernode_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.workernode_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.oke_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.oke_vcn_seclist_private_workernode.security_list_ocid
}


# ----------------------------------------
# management Subnet Configuration Module
# ----------------------------------------


module "management_subnet" {
    source                                  = "./subnet_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    vcn_subnet_display_name                 = var.management_subnet_display_name
    vcn_subnet_dns_label                    = var.management_subnet_dns_label
    vcn_subnet_cidr_block                   = var.management_subnet_cidr_block
    route_table_ocid                        = module.oke_vcn_routetable_private_management.route_table_ocid
    vcn_ocid                                = module.oke_vcn.vcn_ocid
    vcn_subnet_prohibit_internet_ingress    = var.management_subnet_prohibit_internet_ingress
    vcn_subnet_prohibit_public_ip_on_vnic   = var.management_subnet_prohibit_public_ip_on_vnic
    dhcp_options_ocid                       = module.oke_vcn.default_dhcp_options_ocid
    security_list_ocid                      = module.oke_vcn_seclist_private_management.security_list_ocid
}
