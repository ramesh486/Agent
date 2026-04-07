module "ipsec_vpn_connection" {
    source                                              = "./ipsec_vpn_module"
    compartment_ocid                                    = local.compartment_ocid
    project_tag                                         = var.project_tag
    drg_ocid                                            = var.drg_ocid
    cpe_device_display_name                             = var.cpe_device_display_name
    cpe_ip_address                                      = var.cpe_public_ip_address
    ip_sec_connection_static_routes                     = var.ip_sec_connection_static_routes
    ipsec_connection_display_name                       = var.ipsec_connection_display_name
    ip_sec_connection_tunnel_management_routing_type    = var.ip_sec_connection_tunnel_management_routing_type
    ip_sec_connection_cpe_local_identifier              = var.ip_sec_connection_cpe_local_identifier
    ip_sec_connection_cpe_local_identifier_type         = var.ip_sec_connection_cpe_local_identifier_type

    # TUNNEL 1

    ip_sec_connection_tunnel1_management_bgp_session_info_customer_bgp_asn      = var.ip_sec_connection_tunnel1_management_bgp_session_info_customer_bgp_asn
    ip_sec_connection_tunnel1_management_bgp_session_info_customer_interface_ip = var.ip_sec_connection_tunnel1_management_bgp_session_info_customer_interface_ip
    ip_sec_connection_tunnel1_management_bgp_session_info_oracle_interface_ip   = var.ip_sec_connection_tunnel1_management_bgp_session_info_oracle_interface_ip
    ip_sec_connection_tunnel1_management_display_name                           = var.ip_sec_connection_tunnel1_management_display_name
    use_shared_secret_for_tunnel1                                               = var.use_shared_secret_for_tunnel1
    ip_sec_connection_tunnel1_management_shared_secret                          = var.ip_sec_connection_tunnel1_management_shared_secret
    ip_sec_connection_tunnel1_ike_version                                       = var.ip_sec_connection_tunnel1_ike_version

    # TUNNEL 2

    ip_sec_connection_tunnel2_management_bgp_session_info_customer_bgp_asn      = var.ip_sec_connection_tunnel2_management_bgp_session_info_customer_bgp_asn
    ip_sec_connection_tunnel2_management_bgp_session_info_customer_interface_ip = var.ip_sec_connection_tunnel2_management_bgp_session_info_customer_interface_ip
    ip_sec_connection_tunnel2_management_bgp_session_info_oracle_interface_ip   = var.ip_sec_connection_tunnel2_management_bgp_session_info_oracle_interface_ip
    ip_sec_connection_tunnel2_management_display_name                           = var.ip_sec_connection_tunnel2_management_display_name
    ip_sec_connection_tunnel2_management_shared_secret                          = var.ip_sec_connection_tunnel2_management_shared_secret
    ip_sec_connection_tunnel2_ike_version                                       = var.ip_sec_connection_tunnel2_ike_version
    use_shared_secret_for_tunnel2                                               = var.use_shared_secret_for_tunnel2
}