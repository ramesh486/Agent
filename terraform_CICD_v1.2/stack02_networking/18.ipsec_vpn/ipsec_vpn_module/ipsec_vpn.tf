# -----------------------------------------------------------------------------
# Create customer premises equipment object
# -----------------------------------------------------------------------------
resource "oci_core_cpe" "this" {
  compartment_id      = var.compartment_ocid
  ip_address          = var.cpe_ip_address
  cpe_device_shape_id = local.cpe_device_shape_id
  display_name        = var.cpe_device_display_name
  freeform_tags       = var.project_tag.freeformTags
  defined_tags        = var.project_tag.definedTags
}

# -----------------------------------------------------------------------------
# Create IPSec Connection for site-to-site VPN
# -----------------------------------------------------------------------------
resource "oci_core_ipsec" "ipsec_connection" {
  compartment_id            = var.compartment_ocid
  cpe_id                    = oci_core_cpe.this.id
  drg_id                    = var.drg_ocid
  display_name              = var.ipsec_connection_display_name
  static_routes             = var.ip_sec_connection_static_routes
  freeform_tags             = var.project_tag.freeformTags
  defined_tags              = var.project_tag.definedTags
  cpe_local_identifier      = var.ip_sec_connection_cpe_local_identifier
  cpe_local_identifier_type = var.ip_sec_connection_cpe_local_identifier_type
}

resource "oci_core_ipsec_connection_tunnel_management" "tunnel1_with_shared_secret" {
    count = var.use_shared_secret_for_tunnel1 == "true" ? 1 : 0 
    ipsec_id = oci_core_ipsec.ipsec_connection.id
    tunnel_id = local.tunnel1_ocid
    routing = var.ip_sec_connection_tunnel_management_routing_type
    bgp_session_info {
        customer_bgp_asn = var.ip_sec_connection_tunnel_management_routing_type == "STATIC" ? "" : var.ip_sec_connection_tunnel1_management_bgp_session_info_customer_bgp_asn
        customer_interface_ip =  var.ip_sec_connection_tunnel1_management_bgp_session_info_customer_interface_ip
        oracle_interface_ip =  var.ip_sec_connection_tunnel1_management_bgp_session_info_oracle_interface_ip
    }
    display_name = var.ip_sec_connection_tunnel1_management_display_name
    shared_secret = var.ip_sec_connection_tunnel1_management_shared_secret
    ike_version = var.ip_sec_connection_tunnel1_ike_version
}

resource "oci_core_ipsec_connection_tunnel_management" "tunnel1_without_shared_secret" {
    count = var.use_shared_secret_for_tunnel1 == "true" ? 0 : 1 
    ipsec_id = oci_core_ipsec.ipsec_connection.id
    tunnel_id = local.tunnel1_ocid
    routing = var.ip_sec_connection_tunnel_management_routing_type
    bgp_session_info {
        customer_bgp_asn = var.ip_sec_connection_tunnel_management_routing_type == "STATIC" ? "" : var.ip_sec_connection_tunnel1_management_bgp_session_info_customer_bgp_asn
        customer_interface_ip =  var.ip_sec_connection_tunnel1_management_bgp_session_info_customer_interface_ip
        oracle_interface_ip =  var.ip_sec_connection_tunnel1_management_bgp_session_info_oracle_interface_ip
    }
    display_name = var.ip_sec_connection_tunnel1_management_display_name
    ike_version = var.ip_sec_connection_tunnel1_ike_version
}


resource "oci_core_ipsec_connection_tunnel_management" "tunnel2_with_shared_secret" {
    count = var.use_shared_secret_for_tunnel2 == "true" ? 1 : 0 
    ipsec_id = oci_core_ipsec.ipsec_connection.id
    tunnel_id = local.tunnel2_ocid
    routing = var.ip_sec_connection_tunnel_management_routing_type
    bgp_session_info {
        customer_bgp_asn = var.ip_sec_connection_tunnel_management_routing_type == "STATIC" ? "" : var.ip_sec_connection_tunnel2_management_bgp_session_info_customer_bgp_asn
        customer_interface_ip =  var.ip_sec_connection_tunnel2_management_bgp_session_info_customer_interface_ip
        oracle_interface_ip =  var.ip_sec_connection_tunnel2_management_bgp_session_info_oracle_interface_ip
    }
    display_name = var.ip_sec_connection_tunnel2_management_display_name
    shared_secret = var.ip_sec_connection_tunnel2_management_shared_secret
    ike_version = var.ip_sec_connection_tunnel2_ike_version
}

resource "oci_core_ipsec_connection_tunnel_management" "tunnel2_without_shared_secret" {
    count = var.use_shared_secret_for_tunnel2 == "true" ? 0 : 1 
    ipsec_id = oci_core_ipsec.ipsec_connection.id
    tunnel_id = local.tunnel2_ocid
    routing = var.ip_sec_connection_tunnel_management_routing_type
    bgp_session_info {
        customer_bgp_asn = var.ip_sec_connection_tunnel_management_routing_type == "STATIC" ? "" : var.ip_sec_connection_tunnel2_management_bgp_session_info_customer_bgp_asn
        customer_interface_ip =  var.ip_sec_connection_tunnel2_management_bgp_session_info_customer_interface_ip
        oracle_interface_ip =  var.ip_sec_connection_tunnel2_management_bgp_session_info_oracle_interface_ip
    }
    display_name = var.ip_sec_connection_tunnel2_management_display_name
    ike_version = var.ip_sec_connection_tunnel2_ike_version
}
