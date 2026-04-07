locals {

  cidr_blocks_type = {
    cidr_block = "CIDR_BLOCK"
    service_cidr_block = "SERVICE_CIDR_BLOCK"
  }
  network_compartment_ocid = data.oci_identity_compartments.this.compartments[0].id
  service_gateway_service_ocid = data.oci_core_services.this.services[0].id
  # drg_ocid = data.oci_core_drgs.this.drgs[0].id
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
    all_services_in_oracle_services_network = data.oci_core_services.this.services[0].cidr_block
  }

  security_list_ports = {
    ssh   = "22"
    https = "443"
  }

  oke_vcn_routetable_private = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.oke_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_services_in_oracle_services_network
      "network_entity_id" = module.oke_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]
  
  oke_vcn_routetable_private_k8s_api_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.oke_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_services_in_oracle_services_network
      "network_entity_id" = module.oke_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]

  oke_vcn_routetable_loadbalancer_route_rules = [
    {
      "destination"       = local.cidr_blocks.any_ip_range
      "network_entity_id" = module.oke_vcn_intgw.internet_gateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    }
  ]

  oke_vcn_routetable_private_workernode_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.oke_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_services_in_oracle_services_network
      "network_entity_id" = module.oke_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]

  oke_vcn_routetable_private_management_route_rules = [
    {
      "destination"       = "0.0.0.0/0"
      "network_entity_id" = module.oke_vcn_natgateway.natgateway_ocid
      "destination_type"  = "CIDR_BLOCK"
    },
    {
      "destination"       = local.cidr_blocks.all_services_in_oracle_services_network
      "network_entity_id" = module.oke_vcn_servicegateway_private.service_gateway_ocid
      "destination_type"  = "SERVICE_CIDR_BLOCK"
    }
  ]

  oke_vcn_seclist_private_k8s_api_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.any_ip_range
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.cidr_block
      "security_list_egress_security_rules_stateless"         = var.oke_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.all_services_in_oracle_services_network
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.service_cidr_block
      "security_list_egress_security_rules_stateless"         = var.oke_vcn_seclist_private_is_stateless 
    }
  ]
  oke_vcn_seclist_private_k8s_api_source_security_rules = [
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "6443"
    },
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "12250"
    },
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ICMP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_icmp_options_type" = local.security_list_protocols.icmp_options_type
      "security_list_ingress_security_rules_icmp_options_code" = local.security_list_protocols.icmp_options_code
    }
  ]


  oke_vcn_seclist_loadbalancer_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.any_ip_range
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.cidr_block
      "security_list_egress_security_rules_stateless"         = var.oke_vcn_seclist_private_is_stateless 
    }
  ]
  oke_vcn_seclist_loadbalancer_source_security_rules = [
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "80"
    }
  ]




  oke_vcn_seclist_private_workernode_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.any_ip_range
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.cidr_block
      "security_list_egress_security_rules_stateless"         = var.oke_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.all_services_in_oracle_services_network
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.service_cidr_block
      "security_list_egress_security_rules_stateless"         = var.oke_vcn_seclist_private_is_stateless 
    }
  ]
  oke_vcn_seclist_private_workernode_source_security_rules = [
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = local.cidr_blocks.any_ip_range
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "22"
    },
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ICMP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_icmp_options_type" = local.security_list_protocols.icmp_options_type
      "security_list_ingress_security_rules_icmp_options_code" = local.security_list_protocols.icmp_options_code
    }
  ]



  oke_vcn_seclist_private_management_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.any_ip_range
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.cidr_block
      "security_list_egress_security_rules_stateless"         = var.oke_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_egress_security_rules_destination"       = local.cidr_blocks.all_services_in_oracle_services_network
      "security_list_egress_security_rules_protocol"          = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_egress_security_rules_destination_type"  = local.cidr_blocks_type.service_cidr_block
      "security_list_egress_security_rules_stateless"         = var.oke_vcn_seclist_private_is_stateless 
    }
  ]
  oke_vcn_seclist_private_management_source_security_rules = [
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ALL_PROTOCOLS
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
    },
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "6443"
    },
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.TCP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_port"             = "12250"
    },
    {
      "security_list_ingress_security_rules_source"           = var.oke_vcn_cidr_block
      "security_list_ingress_security_rules_protocol"         = local.security_list_protocols.ICMP
      "security_list_ingress_security_rules_source_type"      = local.cidr_blocks_type.cidr_block
      "security_list_ingress_security_rules_stateless"        = var.oke_vcn_seclist_private_is_stateless 
      "security_list_ingress_security_rules_icmp_options_type" = local.security_list_protocols.icmp_options_type
      "security_list_ingress_security_rules_icmp_options_code" = local.security_list_protocols.icmp_options_code
    }
  ]


}
