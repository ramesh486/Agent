
# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "tenancy_ocid" {
  type = string
  description = "Tenancy OCID"
  default = ""
}
variable "compartment_id_in_subtree" {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable "compartment_name" {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "region" {
  type = string
  description = "Region"
  default = ""
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Fastconnect"
        }
      freeformTags = {}
  }
}


# -----------------------------------------------------------------------------
# FastConnect Virtual Circuit Inputs
# -----------------------------------------------------------------------------

variable "virtual_circuit_display_name" {
  type        = string
  description = "FastConnect Virtual Display Name"
  default = "" 
}


variable "virtual_circuit_bandwidth_shape" {
  type        = string
  description = "The provisioned data rate of the connection"
  default     = "1"
}

variable "create_private_virtual_circuit" {
  type = bool
  description = "To create private virtual circuit set this to false"
  default = true
}

variable "fastconnect_routing_policy" {
  type        = string
  description = "Available FastConnect routing policies: ORACLE_SERVICE_NETWORK, REGIONAL, MARKET_LEVEL, GLOBAL"
  default     = "MARKET_LEVEL"
}

variable "provider_service_key_name" {
  type        = string
  description = "The provider service key that the provider gives you when you set up a virtual circuit connection from the provider to OCI"
  default     = ""
}

variable "virtual_circuit_cross_connect_mappings_customer_bgp_peering_ip" {
  type        = string
  description = "This is the BGP IPv4 address of the customer's router"
  default     = "10.0.0.22/30"
}

variable "virtual_circuit_cross_connect_mappings_oracle_bgp_peering_ip" {
  type        = string
  description = "IPv4 address for Oracle's end of the BGP session"
  default     = "10.0.0.21/30"
}

variable "virtual_circuit_cross_connect_mappings_customer_secondary_bgp_peering_ip" {
  type        = string
  description = "This is the secondary BGP IPv4 address of the customer's router"
  default     = "10.33.224.105/30"
}

variable "virtual_circuit_cross_connect_mappings_oracle_secondary_bgp_peering_ip" {
  type        = string
  description = "Secondary IPv4 address for Oracle's end of the BGP session"
  default     = "10.33.224.110/30"
}

variable "fastconnect_provider" {
  type        = string
  description = "Available FastConnect providers: AT&T, Microsoft Azure, Megaport, QTS, CEintro, Cologix, CoreSite, Digitial Realty, EdgeConneX, Epsilon, Equinix, InterCloud, Lumen, Neutrona, OMCS, OracleL2ItegDeployment, OracleL3ItegDeployment, Orange, Verizon, Zayo"
  default     = ""
}

variable "virtual_circuit_customer_asn" {
  type = number
  description = "The BGP ASN of the network at the other end of the BGP session from Oracle"
  default     = 0
}

variable "bgp_md5_authentication_key" {
  type        = string
  description = "BGP MD5 Authentication Key"
  default = ""
}

variable "drg_ocid" {
  type        = string
  description = "The DRG OCID"
  default = ""
}