# ----------------------------------------
# Common Variables
# ----------------------------------------
variable "region" {
  type        = string
  description = "Enter Region"  
  default     = "us-ashburn-1"  
}

variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy ocid"  
  default     = ""  
}

variable compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Ipsec VPN"
        }
      freeformTags = {}
  }
}

variable "drg_ocid" {
  type        = string
  description = "The DRG OCID"
  default = "ocid1.drg.oc1.iad.aaaaaaaah6usniudob5p3sfpeqhzucegcylpn32nk3lsfnjbg64lw52fj6aa"
}

variable "cpe_device_display_name" {
  type = string
  description = "Display Name for your Customer Premises Equipment"
  default = "ipsec_vpn"
}

variable "cpe_public_ip_address" {
  type        = string
  description = "Customer Premises Equipment IP address"
  default = "165.32.1.59"
}

variable "ip_sec_connection_static_routes" {
  type        = list
  default = ["172.22.0.0/16"]
}

variable "ipsec_connection_display_name" {
  type        = string
  default = "ipsec_connection"
}

variable "ip_sec_connection_tunnel_management_routing_type" {
  type = string
  default = "STATIC"
}

variable "ip_sec_connection_cpe_local_identifier_type" {
  type = string
  default = "IP_ADDRESS"
}

variable "ip_sec_connection_cpe_local_identifier" {
  type = string
  default = "172.22.20.1"
}

# Tunnel 1 Configuration

variable "ip_sec_connection_tunnel1_management_bgp_session_info_customer_bgp_asn" {
  type = string
  default = "ipsec_vpn_tunnel1"  
}

variable "ip_sec_connection_tunnel1_management_bgp_session_info_customer_interface_ip" {
  type = string
  default = "10.0.0.16/31"
}

variable "ip_sec_connection_tunnel1_management_bgp_session_info_oracle_interface_ip" {
  type = string
  default = "10.0.0.17/31"
}

variable "ip_sec_connection_tunnel1_management_display_name" {
  type = string
  default = "ip_sec_connection_tunnel1"
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
  default = "V2"
}

# TUNNEL 2 Configuration

variable "ip_sec_connection_tunnel2_management_bgp_session_info_customer_bgp_asn" {
  type = string
  default = "ipsec_vpn_tunnel2"  
}

variable "ip_sec_connection_tunnel2_management_bgp_session_info_customer_interface_ip" {
  type = string
  default = "10.0.0.18/31"
}

variable "ip_sec_connection_tunnel2_management_bgp_session_info_oracle_interface_ip" {
  type = string
  default = "10.0.0.19/31"
}


variable "ip_sec_connection_tunnel2_management_display_name" {
  type = string
  default = "ip_sec_connection"
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
  default = "V2"
}