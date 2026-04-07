##############################
### Common Variables
##############################

variable "compartment_ocid" {}
variable "region" {}
variable "tenancy_ocid" {}
variable "project_tag" {
  type        = map
  description = "Tags to be Assigned to the Resources"
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

##############################
### WAF Policy
##############################

variable "web_app_firewall_policy_display_name" {
    default = "webappfirewallpolicy-test1"
}
variable "web_app_firewall_policy_actions_name1" {
    default = "Pre-configured Check Action"
}
variable "web_app_firewall_policy_actions_type1" {
    default = "CHECK"
}
variable "web_app_firewall_policy_actions_name2" {
    default = "Pre-configured Allow Action"
}
variable "web_app_firewall_policy_actions_type2" {
    default = "ALLOW"
}
variable "web_app_firewall_policy_actions_name3" {
    default = "Pre-configured 401 Response Code Action"
}
variable "web_app_firewall_policy_actions_type3" {
    default = "RETURN_HTTP_RESPONSE"
}
variable "web_app_firewall_policy_actions_code" {
    default = "401"
}
variable "web_app_firewall_policy_actions_headers_name" {
    default = "Content-Type"
}
variable "web_app_firewall_policy_actions_headers_value" {
    default = "application/json"
}
variable "web_app_firewall_policy_actions_body_text" {
    default = "{\"code\":\"401\",\"message\":\"Unauthorized\"}"
}
variable "web_app_firewall_policy_actions_body_type" {
    default = "STATIC_TEXT"
}

##############################
###  Access Control
##############################

variable "web_app_firewall_policy_request_access_control_default_action_name" {
    default = "Pre-configured Allow Action"
}
variable "web_app_firewall_policy_request_access_control_rules_action_name" {
    default = "Pre-configured 401 Response Code Action"
}
variable "web_app_firewall_policy_request_access_control_rules_name" {
    default = "accesscontrol-test1"
}
variable "web_app_firewall_policy_request_access_control_rules_type" {
    default = "ACCESS_CONTROL"
}
variable "web_app_firewall_policy_request_access_control_rules_condition" {
    default = "!i_contains(['US'], connection.source.geo.countryCode)"
}
variable "web_app_firewall_policy_request_access_control_rules_condition_language" {
    default = "JMESPATH"
}

##############################
###  Protection
##############################

variable "web_app_firewall_policy_request_protection_body_inspection_size_limit_in_bytes" {
    default = "8192"
}
variable "web_app_firewall_policy_request_protection_rules_action_name" {
    default = "Pre-configured 401 Response Code Action"
}
variable "web_app_firewall_policy_request_protection_rules_condition_language" {
    default = "JMESPATH"
}
variable "web_app_firewall_policy_request_protection_rules_is_body_inspection_enabled" {
    default = "false"
}
variable "web_app_firewall_policy_request_protection_rules_name" {
    default = "protectionrule-test"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key1" {
    default = "944300"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version1" {
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key2" {
    default = "944250"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version2" {
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key3" {
    default = "944240"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version3" {
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key4" {
    default = "944210"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version4" {
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key5" {
    default = "944200"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version5" {
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_type" {
    default = "PROTECTION"
}

##############################
###  Rate Limiting
##############################

variable "web_app_firewall_policy_request_rate_limiting_rules_action_name" {
    default = "Pre-configured Check Action"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_period_in_seconds" {
    default = "3"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_requests_limit" {
    default = "3"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_action_duration_in_seconds" {
    default = "3"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_name" {
    default = "ratelimit-test1"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_type" {
    default = "REQUEST_RATE_LIMITING"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_condition" {
    default = "!i_contains(['US'], connection.source.geo.countryCode)"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_condition_language" {
    default = "JMESPATH"
}
