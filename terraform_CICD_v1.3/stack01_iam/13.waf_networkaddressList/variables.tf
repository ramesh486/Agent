##############################
### Common Variables
##############################

variable "security_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "security_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable "region" {
  type        = string
  description = "Enter Region"  
 	default     = "us-ashburn-1"  
}

variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy_ocid"  
 	default     = ""  
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "WFA NetworkAddresslist"
        }
      freeformTags = {}
  }
}
##############################
### IP Address Variables
##############################

variable network_ip_address_list_display_name {
    default = "Network IP Address List2"
}
variable network_ip_address_list_type {
    default = "ADDRESSES"
}
variable network_ip_address_list_address {
    default = "10.0.0.0/24"
}

##############################
### VCN Address Variables
##############################

variable network_vcn_address_list_display_name {
    default = "Network VCN Address List1"
}
variable network_vcn_address_list_type {
    default = "VCN_ADDRESSES"
}
variable network_address_list_vcn_addresses_addresses {
    default = "10.0.0.0/16"
}
variable "vcn_display_name" {
  type = string
  default = ""
  description = "The VCN name in which the application is deployed"
}
