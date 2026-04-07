variable "compartment_ocid"{
    type        = string
    default     = ""
    description = "The OCID (Oracle Cloud Identifier) of the compartment"
}
variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
}

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "tenancy_ocid" {
  default     = "" 
  type        = string
  description = "Tenancy OCID"
}

variable "compartment_name" {
    type        = string
    default     = "network"
    description = "Compartment Name to deploy the resource"
}

variable "subnet_display_name" {
  type          = string
  default       = "example_subnet"
  description   = "The subnet in which the application is deployed"
}

variable "network_firewall_display_name"{
    type        = string
    default     = "Example_firewall"
    description = "The display name for the network firewall."
}




############## Firewall policy ###############


variable "network_firewall_policy_display_name" {
    type        = string
    default     = "Example_firewall_policy"
    description = "The display name for the network firewall policy."
}


########### application_lists variable ##################


variable "network_firewall_policy_application_lists_key" {
    type        = string
    default     = "my_application_list"
    description = "The key for the application lists in the firewall policy."
}

variable "network_firewall_policy_application_lists_type" {
    type        = string
    default     = "TCP"
    description = "The type of the application lists in the firewall policy."
}


########### ip_address_lists variable ##################

variable "network_firewall_policy_ip_address_lists_name" {
    type        = string
    default     = "IPv4"
    description = "The name for the IP address lists in the firewall policy."
}

variable "network_firewall_policy_ip_address_lists_value" {
    type        = list(string)
    default     = ["10.0.1.0/16"]
    description = "The value of the IP address lists in the firewall policy."
}




########### security_rules variable ##################

variable "network_firewall_policy_security_rules_action" {
    type        = string
    default     = "Allow traffic"
    description = "The action for the security rules in the firewall policy."
}

variable "network_firewall_policy_security_rules_name" {
    type        = string
    default     = "Example_rule"
    description = "The name for the security rules in the firewall policy."
}

variable "network_firewall_policy_security_rules_condition_applications" {
    type        = list(string)
    default     = ["app-1"]
    description = "The list of applications for the security rules in the firewall policy."
}

variable "network_firewall_policy_security_rules_condition_destinations" {
    type        = list(string)
    default     = ["hr_source"]
    description = "The list of destinations for the security rules in the firewall policy."
}

variable "network_firewall_policy_security_rules_condition_sources" {
    type        = list(string)
    default     = ["hr_source"]
    description = "The list of sources for the security rules in the firewall policy."
}

variable "network_firewall_policy_security_rules_condition_urls" {
    type        = list(string)
    default     = ["hr"]
    description = "The list of URLs for the security rules in the firewall policy."
}

variable "network_firewall_policy_security_rules_inspection" {
    type        = string
    default     = "INTRUSION_DETECTION"
    description = "The inspection type for the security rules in the firewall policy."
}


########### url_lists variable ##################

variable "network_firewall_policy_url_lists_key" {
    type        = string
    default     = "Example_Url"
    description = "The key for the URL lists in the firewall policy."
}

variable "network_firewall_policy_url_lists_type" {
    type        = string
    default     = "SIMPLE"
    description = "The type of the URL lists in the firewall policy."
}