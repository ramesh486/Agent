# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "tenancy_ocid" {
  description = "Target tenancy OCID"
  type        = string
  default     = ""
}

variable "compartment_name" {
    type = string
    default = "network"
    description = "Compartment Name to deploy the VCN"
}

variable "compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "region" {
  type        = string
  description = "Region"
  default     = "us-ashburn-1"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}

# ----------------------------------------
# VCN Variables
# ----------------------------------------

variable "prod_hub_vcn_display_name" {
  type        = string
  description = "Prod HUB VCN Display Name"
  default     = "prod_hub_vcn"
}

variable "prod_hub_vcn_dns_label" {
  type        = string
  description = "Prod HUB VCN DNS Label"
  default     = "prodhubvcn"
}

variable "prod_hub_vcn_cidr_block" {
  description = "Prod HUB VCN Cidr Block"
  type        = string
  default     = "10.96.1.0/24"
}

variable "prod_vcn_cidr_block" {
  type        = string
  description = "Prod VCN Cidr Block"
  default     = "10.96.4.0/22"
}


# ----------------------------------------
# Subnet Variables
# ----------------------------------------
# ----------------------------------------
# Prod NLB Public Subnet Configuration Variables
# ----------------------------------------


variable "prod_nlb_pub_subnet_display_name" {
  type        = string
  description = "Prod NLB Public Subnet Display Name"
  default     = "np_nlb_pub_subnet"
}

variable "prod_nlb_pub_subnet_dns_label" {
  type        = string
  description = "Prod NLB Public Subnet DNS Label"
  default     = "npnlbpubsn"
}

variable "prod_nlb_pub_subnet_cidr_block" {
  type        = string
  description = "Prod NLB Public Subnet Cidr Block"
  default     = "10.96.1.0/26"
}

variable "prod_nlb_pub_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "Prod NLB Public Subnet Access Type (Private or Public)"
  default     = false
}

variable "prod_nlb_pub_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "Prod NLB Public Subnet Access Type (Private or Public)"
  default     = false
}

variable "prod_nlb_pub_subnet_project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}

# -------------------------------------------------
# Prod Untrust Subnet Configuration Variables
# -------------------------------------------------



variable "prod_untrust_subnet_display_name" {
  type        = string
  description = "Prod Untrust Subnet Display Name"
  default     = "np_untrust_subnet"
}

variable "prod_untrust_subnet_dns_label" {
  type        = string
  description = "Prod Untrust Subnet DNS Label" 
  default     = "npuntrustsn"
}

variable "prod_untrust_subnet_cidr_block" {
  type        = string
  description = "Prod Untrust Subnet Cidr Block"
  default     = "10.96.1.64/26"
}

variable "prod_untrust_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "Prod Untrust Subnet Access Type (Private or Public)"
  default     = true
}

variable "prod_untrust_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "Prod Untrust Subnet Access Type (Private or Public) "
  default     = true
}

variable "prod_untrust_project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}


# ----------------------------------------
# Prod Management Subnet Configuration Variables
# ----------------------------------------


variable "prod_management_subnet_display_name" {
  type        = string
  description = "Prod Management Subnet Display Name"
  default     = "np_mgmt_subnet"
}

variable "prod_management_subnet_dns_label" {
  type        = string
  description = "Prod Management Subnet DNS Label"
  default     = "npmgmtsn"
}

variable "prod_management_subnet_cidr_block" {
  type        = string
  description = "Prod Management Subnet Cidr Block"
  default     = "10.96.1.128/26"
}

variable "prod_management_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "Prod Management Subnet Access Type (Private or Public)"
  default     = true
}

variable "prod_management_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "Prod Management Subnet Access Type (Private or Public)"
  default     = true
}

variable "prod_management_project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}


# ----------------------------------------
# Prod Trust Subnet Configuration Variables
# ----------------------------------------


variable "prod_trust_subnet_display_name" {
  type        = string
  description = "Prod Trust Subnet Display Name"
  default     = "np_trust_subnet"
}

variable "prod_trust_subnet_dns_label" {
  type        = string
  description = "Prod Trust Subnet DNS Label"
  default     = "nptrustsn"
}

variable "prod_trust_subnet_cidr_block" {
  type        = string
  description = "Prod Trust Subnet Cidr Block"
  default     = "10.96.1.192/26"
}

variable "prod_trust_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "Prod Trust Subnet Access Type (Private or Public)"
  default     = true
}

variable "prod_trust_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "Prod Trust Subnet Access Type (Private or Public)"
  default     = true
}

variable "prod_trust_project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}

# ----------------------------------------
# VCN Components Variables
# ----------------------------------------


variable "prod_hub_vcn_servicegateway_private_display_name" {
  type        = string
  description = "Prod HUB VCN Service Gateway Display Name"
  default     = "prod_hub_vcn_servicegateway_private"
}

variable "prod_hub_vcn_natgateway_display_name" {
  type        = string
  description = "Prod HUB VCN NAT Gateway Display Name"
  default     = "prod_hub_vcn_natgateway"
}

variable "prod_hub_vcn_natgateway_block_traffic" {
  type        = bool
  description = "Block the traffic in NAT gateway on creation"
  default     = false
}

variable "prod_hub_vcn_natgateway_public_ip_lifetime" {
  type        = string
  description = "Reserved IP Address will be created for NAT Gateway"
  default     = "RESERVED"
}
variable "prod_hub_vcn_intgw_display_name" {
   type        = string
  description = "Prod HUB VCN Internet Gateway Display Name"
  default = "prod_hub_vcn_intgw"
}

variable "prod_hub_vcn_intgw_enabled" {
  type        = bool
  description = "Is Prod HUB intgw enabled"
  default = true
}


# ----------------------------------------
# VCN Route Table Variables
# ----------------------------------------


variable "prod_hub_vcn_routetable_private_untrust_display_name" {
  type = string
  description = "Prod HUB VCN Untrust Route Table"
  default = "prod_hub_vcn_routetable_private_untrust"
}

variable "prod_hub_vcn_routetable_private_management_display_name" {
  type = string
  description = "Prod HUB VCN Managment Route Table"
  default = "prod_hub_vcn_routetable_private_management"
}

variable "prod_hub_vcn_routetable_private_trust_display_name" {
  type = string
  description = "Prod HUB VCN Trust Route Table"
  default = "prod_hub_vcn_routetable_private_trust"
}

variable "prod_hub_vcn_routetable_public_nlb_display_name" {
  type = string
  description = "Prod HUB VCN NLB Public Route Table"
  default = "prod_hub_vcn_routetable_public_nlb"
}

# ----------------------------------------
# DRG Variables
# ----------------------------------------

variable "drg_display_name" {
  type = string
  description = "DRG Display Name"
  default = "prod_network_drg"
}

variable "prod_hub_vcn_drg_attachment_display_name" {
  type = string
  description = "Prod DRG Attachment Display Name"
  default = "prod_hub_vcn_drg_attachment"
}


# ----------------------------------------
# Security List Variables
# ----------------------------------------

variable "prod_hub_vcn_seclist_private_display_name" {
  type = string
  description = "Prod HUB VCN Private Security List Display Name"
  default = "prod_hub_vcn_seclist_private"
}

variable "prod_hub_vcn_seclist_private_is_stateless" {
  type = bool
  description = "Prod HUB VCN Private Security List is Stateless?"
  default = false
}

variable "prod_hub_vcn_seclist_public_nlb_display_name" {
  type = string
  description = "Prod HUB VCN nlb Subnet Private Security List Display Name"
  default = "prod_hub_vcn_seclist_public_nlb"
}

variable "prod_hub_vcn_seclist_public_nlb_is_stateless" {
  type = bool
  description = "Prod HUB VCN nlb Subnet Private Security List is Stateless?"
  default = false
}