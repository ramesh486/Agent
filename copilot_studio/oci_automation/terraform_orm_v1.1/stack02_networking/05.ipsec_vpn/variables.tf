# ----------------------------------------
# Common Variables
# ----------------------------------------

variable compartment_ocid {}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


variable "drg_ocid" {
  type        = string
  description = "The DRG OCID"
}

variable "cpe_device_display_name" {
  type = string
  description = "Display Name for your Customer Premises Equipment"
  default = ""
}

variable "cpe_public_ip_address" {
  type        = string
  description = "Customer Premises Equipment IP address"
}

variable "ip_sec_connection_static_routes" {
  type        = list
  default = []
}

variable "ipsec_connection_display_name" {
  type        = string
}

variable "ip_sec_connection_tunnel_management_routing_type" {
  type = string
}

variable "ip_sec_connection_cpe_local_identifier_type" {
  type = string
}

variable "ip_sec_connection_cpe_local_identifier" {
  type = string
}

# Tunnel 1 Configuration

variable "ip_sec_connection_tunnel1_management_bgp_session_info_customer_bgp_asn" {
  type = string
  default = ""  
}

variable "ip_sec_connection_tunnel1_management_bgp_session_info_customer_interface_ip" {
  type = string
  default = ""
}

variable "ip_sec_connection_tunnel1_management_bgp_session_info_oracle_interface_ip" {
  type = string
  default = ""
}

variable "ip_sec_connection_tunnel1_management_display_name" {
  type = string
  default = ""
}

variable "use_shared_secret_for_tunnel1" {
  default = false
}

variable "ip_sec_connection_tunnel1_management_shared_secret" {
  type = string
  default = ""
}

variable "ip_sec_connection_tunnel1_ike_version" {
  type = string
}

# TUNNEL 2 Configuration

variable "ip_sec_connection_tunnel2_management_bgp_session_info_customer_bgp_asn" {
  type = string
  default = ""  
}

variable "ip_sec_connection_tunnel2_management_bgp_session_info_customer_interface_ip" {
  type = string
  default = ""
}

variable "ip_sec_connection_tunnel2_management_bgp_session_info_oracle_interface_ip" {
  type = string
  default = ""
}


variable "ip_sec_connection_tunnel2_management_display_name" {
  type = string
  default = ""
}

variable "use_shared_secret_for_tunnel2" {
  default = false
}

variable "ip_sec_connection_tunnel2_management_shared_secret" {
  type = string
  default = ""
}

variable "ip_sec_connection_tunnel2_ike_version" {
  type = string
}