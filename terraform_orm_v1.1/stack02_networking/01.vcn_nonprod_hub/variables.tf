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

variable "nonprod_hub_vcn_display_name" {
  type        = string
  description = "NonProd HUB VCN Display Name"
  default     = "nonprod_hub_vcn"
}

variable "nonprod_hub_vcn_dns_label" {
  type        = string
  description = "NonProd HUB VCN DNS Label"
  default     = "nonprodhubvcn"
}

variable "nonprod_hub_vcn_cidr_block" {
  description = "NonProd HUB VCN Cidr Block"
  type        = string
  default     = "10.97.1.0/24"
}

variable "nonprod_vcn_cidr_block" {
  type        = string
  description = "NonProd HUB VCN Cidr Block"
  default     = "10.97.4.0/22"
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
# NonProd NLB Public Subnet Configuration Variables
# ----------------------------------------


variable "nonprod_nlb_pub_subnet_display_name" {
  type        = string
  description = "NonProd NLB Public Subnet Display Name"
  default     = "np_nlb_pub_subnet"
}

variable "nonprod_nlb_pub_subnet_dns_label" {
  type        = string
  description = "NonProd NLB Public Subnet DNS Label"
  default     = "npnlbpubsn"
}

variable "nonprod_nlb_pub_subnet_cidr_block" {
  type        = string
  description = "NonProd NLB Public Subnet Cidr Block"
  default     = "10.97.1.0/26"
}

variable "nonprod_nlb_pub_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "NonProd NLB Public Subnet Access Type (Private or Public)"
  default     = false
}

variable "nonprod_nlb_pub_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "NonProd NLB Public Subnet Access Type (Private or Public)"
  default     = false
}

variable "nonprod_nlb_pub_subnet_project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}

# -------------------------------------------------
# NonProd Untrust Subnet Configuration Variables
# -------------------------------------------------



variable "nonprod_untrust_subnet_display_name" {
  type        = string
  description = "NonProd Untrust Subnet Display Name"
  default     = "np_untrust_subnet"
}

variable "nonprod_untrust_subnet_dns_label" {
  type        = string
  description = "NonProd Untrust Subnet DNS Label" 
  default     = "npuntrustsn"
}

variable "nonprod_untrust_subnet_cidr_block" {
  type        = string
  description = "NonProd Untrust Subnet Cidr Block"
  default     = "10.97.1.64/26"
}

variable "nonprod_untrust_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "NonProd Untrust Subnet Access Type (Private or Public)"
  default     = true
}

variable "nonprod_untrust_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "NonProd Untrust Subnet Access Type (Private or Public) "
  default     = true
}

variable "nonprod_untrust_project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}


# ----------------------------------------
# NonProd Management Subnet Configuration Variables
# ----------------------------------------


variable "nonprod_management_subnet_display_name" {
  type        = string
  description = "NonProd Management Subnet Display Name"
  default     = "np_mgmt_subnet"
}

variable "nonprod_management_subnet_dns_label" {
  type        = string
  description = "NonProd Management Subnet DNS Label"
  default     = "npmgmtsn"
}

variable "nonprod_management_subnet_cidr_block" {
  type        = string
  description = "NonProd Management Subnet Cidr Block"
  default     = "10.97.1.128/26"
}

variable "nonprod_management_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "NonProd Management Subnet Access Type (Private or Public)"
  default     = true
}

variable "nonprod_management_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "NonProd Management Subnet Access Type (Private or Public)"
  default     = true
}

variable "nonprod_management_project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}


# ----------------------------------------
# NonProd Trust Subnet Configuration Variables
# ----------------------------------------


variable "nonprod_trust_subnet_display_name" {
  type        = string
  description = "NonProd Trust Subnet Display Name"
  default     = "np_trust_subnet"
}

variable "nonprod_trust_subnet_dns_label" {
  type        = string
  description = "NonProd Trust Subnet DNS Label"
  default     = "nptrustsn"
}

variable "nonprod_trust_subnet_cidr_block" {
  type        = string
  description = "NonProd Trust Subnet Cidr Block"
  default     = "10.97.1.192/26"
}

variable "nonprod_trust_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "NonProd Trust Subnet Access Type (Private or Public)"
  default     = true
}

variable "nonprod_trust_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "NonProd Trust Subnet Access Type (Private or Public)"
  default     = true
}

variable "nonprod_trust_project_tag" {
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


variable "nonprod_hub_vcn_servicegateway_private_display_name" {
  type        = string
  description = "NonProd HUB VCN Service Gateway Display Name"
  default     = "nonprod_hub_vcn_servicegateway_private"
}

variable "nonprod_hub_vcn_natgateway_display_name" {
  type        = string
  description = "NonProd HUB VCN NAT Gateway Display Name"
  default     = "nonprod_hub_vcn_natgateway"
}

variable "nonprod_hub_vcn_natgateway_block_traffic" {
  type        = bool
  description = "Block the traffic in NAT gateway on creation"
  default     = false
}

variable "nonprod_hub_vcn_natgateway_public_ip_lifetime" {
  type        = string
  description = "Reserved IP Address will be created for NAT Gateway"
  default     = "RESERVED"
}
variable "nonprod_hub_vcn_intgw_display_name" {
   type        = string
  description = "NonProd HUB VCN Internet Gateway Display Name"
  default = "nonprod_hub_vcn_intgw"
}

variable "nonprod_hub_vcn_intgw_enabled" {
  type        = bool
  description = "Is Nonprod HUB intgw enabled"
  default = true
}


# ----------------------------------------
# VCN Route Table Variables
# ----------------------------------------


variable "nonprod_hub_vcn_routetable_private_untrust_display_name" {
  type = string
  description = "NonProd HUB VCN Untrust Route Table"
  default = "nonprod_hub_vcn_routetable_private_untrust"
}

variable "nonprod_hub_vcn_routetable_private_management_display_name" {
  type = string
  description = "NonProd HUB VCN Managment Route Table"
  default = "nonprod_hub_vcn_routetable_private_management"
}

variable "nonprod_hub_vcn_routetable_private_trust_display_name" {
  type = string
  description = "NonProd HUB VCN Trust Route Table"
  default = "nonprod_hub_vcn_routetable_private_trust"
}

variable "nonprod_hub_vcn_routetable_public_nlb_display_name" {
  type = string
  description = "NonProd HUB VCN NLB Public Route Table"
  default = "nonprod_hub_vcn_routetable_public_nlb"
}

# ----------------------------------------
# DRG Variables
# ----------------------------------------

variable "drg_display_name" {
  type = string
  description = "DRG Display Name"
  default = "nonprod_network_drg"
}

variable "nonprod_hub_vcn_drg_attachment_display_name" {
  type = string
  description = "NonProd DRG Attachment Display Name"
  default = "nonprod_hub_vcn_drg_attachment"
}


# ----------------------------------------
# Security List Variables
# ----------------------------------------

variable "nonprod_hub_vcn_seclist_private_display_name" {
  type = string
  description = "NonProd HUB VCN Private Security List Display Name"
  default = "nonprod_hub_vcn_seclist_private"
}

variable "nonprod_hub_vcn_seclist_private_is_stateless" {
  type = bool
  description = "NonProd HUB VCN Private Security List is Stateless?"
  default = false
}

variable "nonprod_hub_vcn_seclist_public_nlb_display_name" {
  type = string
  description = "NonProd HUB VCN nlb Subnet Private Security List Display Name"
  default = "nonprod_hub_vcn_seclist_public_nlb"
}

variable "nonprod_hub_vcn_seclist_public_nlb_is_stateless" {
  type = bool
  description = "NonProd HUB VCN nlb Subnet Private Security List is Stateless?"
  default = false
}