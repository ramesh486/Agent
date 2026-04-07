locals {

  cidr_blocks_type = {
    cidr_block = "CIDR_BLOCK"
    service_cidr_block = "SERVICE_CIDR_BLOCK"
  }
  network_compartment_ocid = data.oci_identity_compartments.this.compartments[0].id
  drg_ocid = data.oci_core_drgs.this.drgs[0].id
  security_list_protocols = {
    ALL_PROTOCOLS = "all"
    ICMP          = "1"
    TCP           = "6"
    UDP           = "17"
    ICMPv6        = "58"
    icmp_options_type = "3"
    icmp_options_code = "4"
  }
 
  cidr_blocks = {
    any_ip_range    = "0.0.0.0/0"
    all_iad_services_in_oracle_services_network = "all-iad-services-in-oracle-services-network"
  }

  security_list_ports = {
    ssh   = "22"
    https = "443"
  }

  nonprod_vcn_routetable_private = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.nonprod_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     ### nonprod_vcn CIDR ##
    {
      "destination"       = "10.97.1.0/24"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    #### on-prem network#####
    {
      "destination"       = "10.0.0.0/8"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "192.168.0.0/16"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_iad_services_in_oracle_services_network
      "network_entity_id" = module.nonprod_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]
  
  nonprod_vcn_routetable_private_appdev_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.nonprod_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    ### nonprod_vcn CIDR ##
    {
      "destination"       = "10.97.1.0/24"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     #### on-prem network#####
    {
      "destination"       = "10.0.0.0/8"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "192.168.0.0/16"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_iad_services_in_oracle_services_network
      "network_entity_id" = module.nonprod_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]

  nonprod_vcn_routetable_private_dbdev_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.nonprod_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     ### nonprod_vcn CIDR ##
    {
      "destination"       = "10.97.1.0/24"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     #### on-prem network#####
    {
      "destination"       = "10.0.0.0/8"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "192.168.0.0/16"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_iad_services_in_oracle_services_network
      "network_entity_id" = module.nonprod_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]

  nonprod_vcn_routetable_private_apptst_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.nonprod_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     ### nonprod_vcn CIDR ##
    {
      "destination"       = "10.97.1.0/24"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     #### on-prem network#####
    {
      "destination"       = "10.0.0.0/8"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "192.168.0.0/16"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_iad_services_in_oracle_services_network
      "network_entity_id" = module.nonprod_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]

  nonprod_vcn_routetable_private_dbtst_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.nonprod_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     ### nonprod_vcn CIDR ##
    {
      "destination"       = "10.97.1.0/24"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     #### on-prem network#####
    {
      "destination"       = "10.0.0.0/8"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "192.168.0.0/16"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_iad_services_in_oracle_services_network
      "network_entity_id" = module.nonprod_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]

  nonprod_vcn_seclist_private_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.any_ip_range
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.cidr_block
      "security_list_egress_security_rules_stateless"         = var.nonprod_vcn_seclist_private_is_stateless 
    }
  ]
  nonprod_vcn_seclist_private_source_security_rules = [
    {
      "security_list_ingress_security_rules_source"           = var.nonprod_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.nonprod_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = var.nonprod_hub_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.nonprod_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = "10.0.0.0/8"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.nonprod_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = "192.168.0.0/16"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.nonprod_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = "130.35.17.146/32"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.nonprod_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "1522"
    },
    {
      "security_list_ingress_security_rules_source"           = "129.213.181.212/32"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.nonprod_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "1522"
    },
    {
      "security_list_ingress_security_rules_source"           = "192.9.234.44/32"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.nonprod_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "1522"
    },
    
    {
      "security_list_ingress_security_rules_source"           = "172.17.24.0/24"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.nonprod_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "1522"
    }
  ]
}
