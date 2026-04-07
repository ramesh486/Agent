
module "fastconnect" {
  source                                                                   = "./fastconnect_module"
  compartment_ocid                                                         = local.compartment_ocid
  definedTags                                                              = var.project_tag.definedTags
  freeformTags                                                             = var.project_tag.freeformTags   
  region_key                                                               = local.region_key[0]
  drg_ocid                                                                 = var.drg_ocid
  virtual_circuit_display_name                                             = var.virtual_circuit_display_name
  virtual_circuit_bandwidth_shape                                          = format("%s %s", var.virtual_circuit_bandwidth_shape, "Gbps")
  virtual_circuit_type                                                     = var.create_private_virtual_circuit ? "PRIVATE" : "PUBLIC"
  fastconnect_routing_policy                                               = var.fastconnect_routing_policy
  virtual_circuit_cross_connect_mappings_customer_bgp_peering_ip           = var.virtual_circuit_cross_connect_mappings_customer_bgp_peering_ip
  virtual_circuit_cross_connect_mappings_customer_secondary_bgp_peering_ip = var.virtual_circuit_cross_connect_mappings_customer_secondary_bgp_peering_ip
  virtual_circuit_cross_connect_mappings_oracle_bgp_peering_ip             = var.virtual_circuit_cross_connect_mappings_oracle_bgp_peering_ip
  virtual_circuit_cross_connect_mappings_oracle_secondary_bgp_peering_ip   = var.virtual_circuit_cross_connect_mappings_oracle_secondary_bgp_peering_ip
  virtual_circuit_customer_asn                                             = var.virtual_circuit_customer_asn
  fastconnect_provider                                                     = var.fastconnect_provider
  provider_service_key_name                                                = var.provider_service_key_name
  bgp_md5_authentication_key                                               = var.bgp_md5_authentication_key
}

