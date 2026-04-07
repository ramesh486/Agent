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
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "prod_vcn"}
      freeformTags = {}
  }
}


# ----------------------------------------
# VCN Variables
# ----------------------------------------

variable "prod_vcn_display_name" {
  type        = string
  description = "Prod VCN Display Name"
  default     = "prod_vcn"
}

variable "prod_vcn_dns_label" {
  type        = string
  description = "Prod VCN DNS Label"
  default     = "prodvcn"
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
# AppDev Subnet Configuration Variables
# ----------------------------------------


variable "appdev_subnet_display_name" {
  type        = string
  description = "AppDev Subnet Display Name"
  default     = "appdev_subnet"
}

variable "appdev_subnet_dns_label" {
  type        = string
  description = "AppDev Subnet DNS Label"
  default     = "appdevsubnet"
}

variable "appdev_subnet_cidr_block" {
  type        = string
  description = "AppDev Subnet Cidr Block"
  default     = "10.96.4.0/24"
}

variable "appdev_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "AppDev Subnet Access Type (Private or Public)"
  default     = true
}

variable "appdev_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "AppDev Subnet Access Type (Private or Public)"
  default     = true
}

variable "appdev_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "appdev_subnet"
      freeformTags = {}
    }
}
}



# ----------------------------------------
# DBDev Subnet Configuration Variables
# ----------------------------------------



variable "dbdev_subnet_display_name" {
  type        = string
  description = "DBDev Subnet Display Name"
  default     = "dbdev_subnet"
}

variable "dbdev_subnet_dns_label" {
  type        = string
  description = "DBDev Subnet DNS Label" 
  default     = "dbdevsubnet"
}

variable "dbdev_subnet_cidr_block" {
  type        = string
  description = "DBDev Subnet Cidr Block"
  default     = "10.96.5.0/24"
}

variable "dbdev_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "DBDev Subnet Access Type (Private or Public)"
  default     = true
}

variable "dbdev_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "DBDev Subnet Access Type (Private or Public) "
  default     = true
}

variable "dbdev_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "dbdev_subnet"}
      freeformTags = {}
  }
}



# ----------------------------------------
# AppTst Subnet Configuration Variables
# ----------------------------------------


variable "apptst_subnet_display_name" {
  type        = string
  description = "AppTst Subnet Display Name"
  default     = "apptst_subnet"
}

variable "apptst_subnet_dns_label" {
  type        = string
  description = "AppTst Subnet DNS Label"
  default     = "apptstsubnet"
}

variable "apptst_subnet_cidr_block" {
  type        = string
  description = "AppTst Subnet Cidr Block"
  default     = "10.96.6.0/24"
}

variable "apptst_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "AppTst Subnet Access Type (Private or Public)"
  default     = true
}

variable "apptst_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "AppTst Subnet Access Type (Private or Public)"
  default     = true
}

variable "apptst_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "apptst_subnet"}
      freeformTags = {}
  }
}

# ----------------------------------------
# DBTst Subnet Configuration Variables
# ----------------------------------------


variable "dbtst_subnet_display_name" {
  type        = string
  description = "DBTst Subnet Display Name"
  default     = "dbtst_subnet"
}

variable "dbtst_subnet_dns_label" {
  type        = string
  description = "DBTst Subnet DNS Label"
  default     = "dbtstsubnet"
}

variable "dbtst_subnet_cidr_block" {
  type        = string
  description = "DBTst Subnet Cidr Block"
  default     = "10.96.7.0/24"
}

variable "dbtst_subnet_prohibit_internet_ingress" {
  type        = bool
  description = "DBTst Subnet Access Type (Private or Public)"
  default     = true
}

variable "dbtst_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "DBTst Subnet Access Type (Private or Public)"
  default     = true
}

variable "dbtst_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "dbtst_subnet"}
      freeformTags = {}
  }
}


# ----------------------------------------
# VCN Components Variables
# ----------------------------------------


variable "prod_vcn_servicegateway_private_display_name" {
  type        = string
  description = "Prod VCN Service Gateway Display Name"
  default     = "prod_vcn_servicegateway_private"
}

variable "prod_vcn_natgateway_display_name" {
  type        = string
  description = "Prod VCN NAT Gateway Display Name"
  default     = "prod_vcn_natgateway"
}

variable "prod_vcn_natgateway_block_traffic" {
  type        = bool
  description = "Block the traffic in NAT gateway on creation"
  default     = false
}

variable "prod_vcn_natgateway_public_ip_lifetime" {
  type        = string
  description = "Reserved IP Address will be created for NAT Gateway"
  default     = "RESERVED"
}
variable "prod_vcn_intgw_display_name" {
   type        = string
  description = "Prod VCN Internet Gateway Display Name"
  default = "prod_vcn_intgw"
}

variable "prod_vcn_intgw_enabled" {
  type        = bool
  description = "Is Prod  intgw enabled"
  default = true
}


# ----------------------------------------
# VCN Route Table Variables
# ----------------------------------------


variable "prod_vcn_routetable_private_appdev_display_name" {
  type = string
  description = "Prod VCN AppDev Route Table"
  default = "prod_vcn_routetable_private_appdev"
}

variable "prod_vcn_routetable_private_dbdev_display_name" {
  type = string
  description = "Prod VCN DBDev Route Table"
  default = "prod_vcn_routetable_private_dbdev"
}

variable "prod_vcn_routetable_private_apptst_display_name" {
  type = string
  description = "Prod VCN AppTst Route Table"
  default = "prod_vcn_routetable_private_apptst"
}

variable "prod_vcn_routetable_private_dbtst_display_name" {
  type = string
  description = "Prod VCN DBTst Route Table"
  default = "prod_vcn_routetable_private_dbtst"
}

# ----------------------------------------
# DRG Variables
# ----------------------------------------

variable "drg_display_name" {
  type = string
  description = "DRG Display Name"
  default = ""
}

variable "prod_vcn_drg_attachment_display_name" {
  type = string
  description = "DRG Attachment Display Name"
  default = "prod_vcn_drg_attachment"
}

# -----------------------------------------
# Security List Variables
# ----------------------------------------

variable "prod_vcn_seclist_private_display_name" {
  type = string
  description = "Prod VCN Private Security List Display Name"
  default = "prod_vcn_seclist_private"
}

variable "prod_vcn_seclist_private_is_stateless" {
  type = bool
  description = "Prod VCN Private Security List is Stateless?"
  default = false
}

