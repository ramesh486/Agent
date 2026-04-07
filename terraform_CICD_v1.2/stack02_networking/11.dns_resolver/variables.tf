###########################################
# Common Variables
###########################################
variable "tenancy_ocid" {}
variable "region" {}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Dns_resolver"
        }
      freeformTags = {}
  }
}

variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment name to deploy DNS"
}

variable "compartment_id_in_subtree" {
    type        = bool
    default     = "true"
    description = "Compartment ID in Subtree"
}


###########################################
# OCI DNS Resolver Variables
###########################################

variable "dns_resolver_display_name" {
    default = "nonprod_hub_vcn"
    description = "Provide the display name of your VCN"
}

variable "oci_dns_views" {
  type = list
  default = ["nonprod_hub_vcn","nonprod_vcn" ]
  description = "Provide the list of VCN display names"
}


###########################################
# OCI DNS Resolver Forwarder Variables
###########################################


variable "dns_forwarder_resolver_endpoint_is_forwarding" {
    default = "true"
}

variable "dns_forwarder_resolver_endpoint_is_listening" {
    default = "false"
}

variable "dns_forwarder_resolver_endpoint_name" {
    default = "dns_forwarder"
}

variable "dns_forwarder_subnet_display_name" {
    default = "np_mgmt_subnet"
}



###########################################
# OCI DNS Resolver Listener Variables
###########################################


variable "dns_listener_resolver_endpoint_is_forwarding" {
    default = "false"
}

variable "dns_listener_resolver_endpoint_is_listening" {
    default = "true"
}

variable "dns_listener_resolver_endpoint_name" {
    default = "dns_listener"
}

variable "dns_listener_subnet_display_name" {
    default = "np_mgmt_subnet"
}