# ----------------------------------------
# Common Variables
# ----------------------------------------

variable tenancy_ocid {
  description = "Target tenancy OCID"
  type        = string
  default     = ""
}
variable network_compartment_name {
    type = string
    default = "network"
    description = "Compartment Name to deploy the DRG"
}

variable network_compartment_id_in_subtree {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

 
variable region {
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

variable "oke_vcn_display_name" {
  type        = string
  description = "Prod VCN Display Name"
  default     = "oke_vcn"
}

variable "oke_vcn_dns_label" {
  type        = string
  description = "Prod VCN DNS Label"
  default     = "okevcn"
}


variable "oke_vcn_cidr_block" {
  type        = string
  description = "Prod VCN Cidr Block"
  default     = "10.96.4.0/22"
}


# ----------------------------------------
# Subnet Variables
# ----------------------------------------


# ----------------------------------------
# K8SAPI Subnet Configuration Variables
# ----------------------------------------


variable "k8s_api_subnet_display_name" {
  type        = string
  description = "K8SAPI Subnet Display Name"
  default     = "k8s_api_subnet"
}

variable "k8s_api_subnet_dns_label" {
  type        = string
  description = "K8SAPI Subnet DNS Label"
  default     = "k8sapisubnet"
}

variable "k8s_api_subnet_cidr_block" {
  type        = string
  description = "K8SAPI Subnet Cidr Block"
  default     = "10.96.4.0/24"
}

variable "k8s_api_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "K8SAPI Subnet Access Type (Private or Public)"
  default     = true
}

variable "k8s_api_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "K8SAPI Subnet Access Type (Private or Public)"
  default     = true
}

variable "k8s_api_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
      definedTags = {}
      freeformTags = {}
}
}



# ----------------------------------------
# loadbalancer Subnet Configuration Variables
# ----------------------------------------



variable "loadbalancer_subnet_display_name" {
  type        = string
  description = "loadbalancer Subnet Display Name"
  default     = "lb_subnet"
}

variable "loadbalancer_subnet_dns_label" {
  type        = string
  description = "loadbalancer Subnet DNS Label" 
  default     = "lbsubnet"
}

variable "loadbalancer_subnet_cidr_block" {
  type        = string
  description = "loadbalancer Subnet Cidr Block"
  default     = "10.96.5.0/24"
}

variable "loadbalancer_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "loadbalancer Subnet Access Type (Private or Public)"
  default     = false
}

variable "loadbalancer_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "loadbalancer Subnet Access Type (Private or Public) "
  default     = false
}

variable "loadbalancer_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
      definedTags = {}
      freeformTags = {}
  }
}



# ----------------------------------------
# workernode Subnet Configuration Variables
# ----------------------------------------


variable "workernode_subnet_display_name" {
  type        = string
  description = "workernode Subnet Display Name"
  default     = "workernode_subnet"
}

variable "workernode_subnet_dns_label" {
  type        = string
  description = "workernode Subnet DNS Label"
  default     = "wrknodesubnet"
}

variable "workernode_subnet_cidr_block" {
  type        = string
  description = "workernode Subnet Cidr Block"
  default     = "10.96.6.0/24"
}

variable "workernode_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "workernode Subnet Access Type (Private or Public)"
  default     = true
}

variable "workernode_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "workernode Subnet Access Type (Private or Public)"
  default     = true
}

variable "workernode_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
      definedTags = {}
      freeformTags = {}
  }
}

# ----------------------------------------
# management Subnet Configuration Variables
# ----------------------------------------


variable "management_subnet_display_name" {
  type        = string
  description = "management Subnet Display Name"
  default     = "management_subnet"
}

variable "management_subnet_dns_label" {
  type        = string
  description = "management Subnet DNS Label"
  default     = "mgmtsubnet"
}

variable "management_subnet_cidr_block" {
  type        = string
  description = "management Subnet Cidr Block"
  default     = "10.96.7.0/24"
}

variable "management_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "management Subnet Access Type (Private or Public)"
  default     = true
}

variable "management_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "management Subnet Access Type (Private or Public)"
  default     = true
}

variable "management_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
      definedTags = {}
      freeformTags = {}
  }
}


# ----------------------------------------
# VCN Components Variables
# ----------------------------------------


variable "oke_vcn_servicegateway_private_display_name" {
  type        = string
  description = "Prod VCN Service Gateway Display Name"
  default     = "oke_vcn_servicegateway_private"
}

variable "oke_vcn_natgateway_display_name" {
  type        = string
  description = "Prod VCN NAT Gateway Display Name"
  default     = "oke_vcn_natgateway"
}

variable "oke_vcn_natgateway_block_traffic" {
  type        = bool
  description = "Block the traffic in NAT gateway on creation"
  default     = false
}

variable "oke_vcn_natgateway_public_ip_lifetime" {
  type        = string
  description = "Reserved IP Address will be created for NAT Gateway"
  default     = "RESERVED"
}
variable "oke_vcn_intgw_display_name" {
   type        = string
  description = "Prod VCN Internet Gateway Display Name"
  default = "oke_vcn_intgw"
}

variable "oke_vcn_intgw_enabled" {
  type        = bool
  description = "Is Prod  intgw enabled"
  default = true
}


# ----------------------------------------
# VCN Route Table Variables
# ----------------------------------------


variable "oke_vcn_routetable_private_k8s_api_display_name" {
  type = string
  description = "Prod VCN K8SAPI Route Table"
  default = "oke_vcn_routetable_private_k8s_api"
}

variable "oke_vcn_routetable_loadbalancer_display_name" {
  type = string
  description = "Prod VCN loadbalancer Route Table"
  default = "oke_vcn_routetable_loadbalancer"
}

variable "oke_vcn_routetable_private_workernode_display_name" {
  type = string
  description = "Prod VCN workernode Route Table"
  default = "oke_vcn_routetable_private_workernode"
}

variable "oke_vcn_routetable_private_management_display_name" {
  type = string
  description = "Prod VCN Management Route Table"
  default = "oke_vcn_routetable_private_management"
}

# ----------------------------------------
# DRG Variables
# ----------------------------------------

# variable "drg_display_name" {
#   type = string
#   description = "DRG Display Name"
#   default = ""
# }

# variable "oke_vcn_drg_attachment_display_name" {
#   type = string
#   description = "DRG Attachment Display Name"
#   default = "oke_vcn_drg_attachment"
# }

# -----------------------------------------
# Security List Variables
# ----------------------------------------

variable "oke_vcn_seclist_private_k8s_api_display_name" {
  type = string
  description = "Prod VCN Private Security List Display Name"
  default = "oke_vcn_seclist_private_k8s_api"
}

variable "oke_vcn_seclist_loadbalancer_display_name" {
  type = string
  description = "Prod VCN Private Security List Display Name"
  default = "oke_vcn_seclist_loadbalancer"
}

variable "oke_vcn_seclist_private_workernode_display_name" {
  type = string
  description = "Prod VCN Private Security List Display Name" 
  default = "oke_vcn_seclist_private_workernode"
}

variable "oke_vcn_seclist_private_management_display_name" {
  type = string 
  description = "Prod VCN Private Security List Display Name"
  default = "oke_vcn_seclist_private_management"
}

variable "oke_vcn_seclist_private_is_stateless" {
  type = bool
  description = "Prod VCN Private Security List is Stateless?"
  default = false
}

