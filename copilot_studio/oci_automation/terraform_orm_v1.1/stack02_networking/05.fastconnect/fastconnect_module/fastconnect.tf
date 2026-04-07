locals {
  fastconnect_asn_provider_list    = split(",", var.fastconnect_asn_provider_list)
  fastconnect_no_asn_provider_list = split(",", var.fastconnect_no_asn_provider_list)
}

# -----------------------------------------------------------------------------
# Create FastConnect virtual circuit for Azure ExpressRoute
# -----------------------------------------------------------------------------
resource "oci_core_virtual_circuit" "azure_fastconnect_virtual_circuit" {
  count                     = var.fastconnect_provider == "Microsoft Azure" ? 1 : 0
  compartment_id            = var.compartment_ocid
  gateway_id                = var.drg_ocid
  bandwidth_shape_name      = var.virtual_circuit_bandwidth_shape
  defined_tags              = var.definedTags
  display_name              = var.virtual_circuit_display_name
  provider_service_id       = local.provider_service_id
  provider_service_key_name = var.provider_service_key_name
  region                    = var.region_key
  type                      = local.virtual_circuit_type
  cross_connect_mappings {
    customer_bgp_peering_ip = var.virtual_circuit_cross_connect_mappings_customer_bgp_peering_ip
    oracle_bgp_peering_ip   = var.virtual_circuit_cross_connect_mappings_oracle_bgp_peering_ip
  }
  cross_connect_mappings {
    customer_bgp_peering_ip = var.virtual_circuit_cross_connect_mappings_customer_secondary_bgp_peering_ip
    oracle_bgp_peering_ip   = var.virtual_circuit_cross_connect_mappings_oracle_secondary_bgp_peering_ip
  }
  freeform_tags             = var.freeformTags
}

# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Create FastConnect virtual circuit for Megaport/QTS/C3ntro/Cologix/CoreSite/Digital Realty/EdgeConneX/Epsilon/Equinix/InterCloud/Lumen/Neutrona/OracleL2ItegDeployment/Zayo
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
resource "oci_core_virtual_circuit" "fastconnect_asn_public_virtual_circuit" {
  count                     = contains(local.fastconnect_asn_provider_list, var.fastconnect_provider) && var.virtual_circuit_type == "PUBLIC" ? 1 : 0
  compartment_id            = var.compartment_ocid
  customer_asn              = var.virtual_circuit_customer_asn
  bandwidth_shape_name      = var.virtual_circuit_bandwidth_shape
  display_name              = var.virtual_circuit_display_name
  defined_tags              = var.definedTags
  provider_service_id       = local.provider_service_id
  region                    = var.region_key
  type                      = var.virtual_circuit_type
  routing_policy            = [ var.fastconnect_routing_policy ]
  cross_connect_mappings {
    bgp_md5auth_key         = var.bgp_md5_authentication_key
    customer_bgp_peering_ip = var.virtual_circuit_cross_connect_mappings_customer_bgp_peering_ip
    oracle_bgp_peering_ip   = var.virtual_circuit_cross_connect_mappings_oracle_bgp_peering_ip
  }
  freeform_tags             = var.freeformTags
}

resource "oci_core_virtual_circuit" "fastconnect_asn_private_virtual_circuit" {
  count                     = contains(local.fastconnect_asn_provider_list, var.fastconnect_provider) && var.virtual_circuit_type == "PRIVATE" ? 1 : 0
  compartment_id            = var.compartment_ocid
  customer_asn              = var.virtual_circuit_customer_asn
  gateway_id                = var.drg_ocid
  bandwidth_shape_name      = var.virtual_circuit_bandwidth_shape
  display_name              = var.virtual_circuit_display_name
  defined_tags              = var.definedTags
  provider_service_id       = local.provider_service_id
  region                    = var.region_key
  type                      = var.virtual_circuit_type
  cross_connect_mappings {
    bgp_md5auth_key         = var.bgp_md5_authentication_key
    customer_bgp_peering_ip = var.virtual_circuit_cross_connect_mappings_customer_bgp_peering_ip
    oracle_bgp_peering_ip   = var.virtual_circuit_cross_connect_mappings_oracle_bgp_peering_ip
  }
  freeform_tags             = var.freeformTags
}

# -----------------------------------------------------------------------------------------
# Create FastConnect virtual circuit for AT&T/Verizon/BT/OMCS/OracleL3ItegDeployment/Orange
# -----------------------------------------------------------------------------------------
resource "oci_core_virtual_circuit" "fastconnect_no_asn_virtual_circuit" {
  count                     = contains(local.fastconnect_no_asn_provider_list, var.fastconnect_provider) ? 1 : 0
  compartment_id            = var.compartment_ocid
  gateway_id                = var.drg_ocid
  bandwidth_shape_name      = var.virtual_circuit_bandwidth_shape
  display_name              = var.virtual_circuit_display_name
  defined_tags              = var.definedTags
  provider_service_id       = local.provider_service_id
  region                    = var.region_key
  type                      = local.virtual_circuit_type
  freeform_tags             = var.freeformTags
}
