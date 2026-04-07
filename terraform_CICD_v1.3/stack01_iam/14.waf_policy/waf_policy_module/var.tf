##############################
### Comman Variables
##############################

variable "compartment_ocid" {}
variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
##############################
### WAF Policy
##############################

variable "web_app_firewall_policy_display_name" {}
variable "web_app_firewall_policy_actions_name1" {}
variable "web_app_firewall_policy_actions_type1" {}
variable "web_app_firewall_policy_actions_name2" {}
variable "web_app_firewall_policy_actions_type2" {}
variable "web_app_firewall_policy_actions_name3" {}
variable "web_app_firewall_policy_actions_type3" {}
variable "web_app_firewall_policy_actions_code" {}
variable "web_app_firewall_policy_actions_headers_name" {}
variable "web_app_firewall_policy_actions_headers_value" {}
variable "web_app_firewall_policy_actions_body_text" {}
variable "web_app_firewall_policy_actions_body_type" {}

##############################
###  Access Control
##############################

variable "web_app_firewall_policy_request_access_control_default_action_name" {}
variable "web_app_firewall_policy_request_access_control_rules_action_name" {}
variable "web_app_firewall_policy_request_access_control_rules_name" {}
variable "web_app_firewall_policy_request_access_control_rules_type" {}
variable "web_app_firewall_policy_request_access_control_rules_condition" {}
variable "web_app_firewall_policy_request_access_control_rules_condition_language" {}

##############################
###  Protection
##############################

variable "web_app_firewall_policy_request_protection_body_inspection_size_limit_in_bytes" {}
variable "web_app_firewall_policy_request_protection_rules_action_name" {}
variable "web_app_firewall_policy_request_protection_rules_condition_language" {}
variable "web_app_firewall_policy_request_protection_rules_is_body_inspection_enabled" {}
variable "web_app_firewall_policy_request_protection_rules_name" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key1" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version1" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key2" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version2" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key3" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version3" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key4" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version4" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key5" {}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version5" {}
variable "web_app_firewall_policy_request_protection_rules_type" {}

##############################
###  Rate Limiting
##############################

variable "web_app_firewall_policy_request_rate_limiting_rules_action_name" {}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_period_in_seconds" {}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_requests_limit" {}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_action_duration_in_seconds" {}
variable "web_app_firewall_policy_request_rate_limiting_rules_name" {}
variable "web_app_firewall_policy_request_rate_limiting_rules_type" {}
variable "web_app_firewall_policy_request_rate_limiting_rules_condition" {}
variable "web_app_firewall_policy_request_rate_limiting_rules_condition_language" {}
