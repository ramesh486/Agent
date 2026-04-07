# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}

variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy the DRG"
}

variable "region" {
  default = ""
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Steering_policy"
        }
      freeformTags = {}
  }
}

# ----------------------------------------
# DNS Traffic Managment Policy Variables
# ----------------------------------------

variable "dns_steering_policy_display_name" {
  description = "The display name for the DNS steering policy."
  type        = string
  default     = "dns_terraform"
}

variable "dns_zone_ocid" {
  description = "The OCID of the health check to be used for DNS steering."
  type        = string
  default     = ""
}

variable "dns_steering_policy_type" {
  description = "The type of DNS steering policy."
  type        = string
  default     = "LOAD_BALANCE"
}

variable "ttl" {
  description = "The Time-to-Live (TTL) value for DNS records."
  type        = string
  default     = "30"
}


# ----------------------------------------------------------
# DNS Traffic Managment Policy Attachment Variables
# ----------------------------------------------------------

variable "attach_dns_zone" {
  description = "A flag to indicate whether to attach a DNS zone."
  type        = bool
  default     = false
}

variable "dns_sub_domain_name" {
  description = "The subdomain name for the DNS zone."
  type        = string
  default     = ""
}

variable "health_check_ocid" {
  description = "The OCID of the DNS zone to be attached."
  type        = string
  default     = ""
}
