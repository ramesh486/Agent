locals {

  cidr_blocks_type = {
    cidr_block = "CIDR_BLOCK"
    service_cidr_block = "SERVICE_CIDR_BLOCK"
  }
  compartment_ocid = data.oci_identity_compartments.this.compartments[0].id
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

  prod_hub_vcn_routetable_private = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.prod_hub_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_iad_services_in_oracle_services_network
      "network_entity_id" = module.prod_hub_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    },
    {
      "destination"       = "10.97.4.0/22"
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
    }
  ]
  
  prod_hub_vcn_routetable_private_untrust_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.prod_hub_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "10.97.4.0/22"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     {
      "destination"       = "172.17.240.0/20"
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
    }
  ]

  prod_hub_vcn_routetable_private_management_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.prod_hub_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "10.97.4.0/22"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     {
      "destination"       = "172.17.240.0/20"
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
    }
  ]

  prod_hub_vcn_routetable_private_trust_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.prod_hub_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "10.97.4.0/22"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
     {
      "destination"       = "172.17.240.0/20"
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
    }
  ]

  prod_hub_vcn_routetable_public_nlb_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.prod_hub_vcn_intgw.internet_gateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "10.97.4.0/22"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "10.97.5.0/24"
      "network_entity_id" = local.drg_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = "172.17.240.0/20"
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
    }
  ]

  prod_hub_vcn_seclist_private_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.any_ip_range
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.cidr_block
      "security_list_egress_security_rules_stateless"         = var.prod_hub_vcn_seclist_private_is_stateless 
    }
  ]
   

  prod_hub_vcn_seclist_private_source_security_rules = [
   
    {
      "security_list_ingress_security_rules_source"           = var.prod_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.prod_hub_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = "10.0.0.0/8"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.prod_hub_vcn_seclist_private_is_stateless
    },
    {
      "security_list_ingress_security_rules_source"           = "192.168.0.0/16"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.prod_hub_vcn_seclist_private_is_stateless
    },
    {
      "security_list_ingress_security_rules_source"           = "129.213.181.212/32"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.prod_hub_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "1522"
    },
    {
      "security_list_ingress_security_rules_source"           = "129.148.160.228/32"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.prod_hub_vcn_seclist_private_is_stateless 
       "security_list_ingress_security_rules_port"             = "22"
    },
    {
      "security_list_ingress_security_rules_source"             = "172.17.240.0/20"
      "security_list_ingress_security_rules_protocol"           = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"        = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"          = var.prod_hub_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"               = "22"
    }
  ]
  

prod_hub_vcn_seclist_public_nlb_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"           = "0.0.0.0/0"
      "security_list_egress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_egress_security_rules_destination_type"   = local.cidr_blocks_type.cidr_block
      "security_list_egress_security_rules_stateless"          = var.prod_hub_vcn_seclist_public_nlb_is_stateless 
      "security_list_egress_security_rules_port"               = "22"
}
]
prod_hub_vcn_seclist_public_nlb_source_security_rules = [
        {
      "security_list_ingress_security_rules_source"           = "129.159.32.215/32"
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.prod_hub_vcn_seclist_public_nlb_is_stateless 
       "security_list_ingress_security_rules_port"             = "22"
    }
]
}
