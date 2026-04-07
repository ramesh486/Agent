##############################
### Common Variables
##############################

variable security_compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable security_compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "region" {
  type        = string
  description = "Enter Region"  
  default     = ""  
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
        "Automation_Tags.Automation_ResourceType" = "WFA Policy"
        }
      freeformTags = {}
  }
}
##############################
### WAF Policy
##############################

variable "web_app_firewall_policy_display_name" {
  type        = string
  description = "Web App Firewall Policy display name"
  default = "webappfirewallpolicy-test1"
}
variable "web_app_firewall_policy_actions_name1" {
    type        = string
    description = "Action name"
    default = "Pre-configured Check Action"
}
variable "web_app_firewall_policy_actions_type1" {
  type        = string
  description = "Action Type"
  default = "CHECK"
}
variable "web_app_firewall_policy_actions_name2" {
    type        = string
    description = "Action name"
    default = "Pre-configured Allow Action"
}
variable "web_app_firewall_policy_actions_type2" {
    type        = string
    description = "Action Type"
    default = "ALLOW"
}
variable "web_app_firewall_policy_actions_name3" {
    type        = string
    description = "Action name"
    default = "Pre-configured 401 Response Code Action"
}
variable "web_app_firewall_policy_actions_type3" {
    type        = string
    description = "Action Type"
    default = "RETURN_HTTP_RESPONSE"
}
variable "web_app_firewall_policy_actions_code" {
    type        = number
    description = "Response code"
    default = 401
}
variable "web_app_firewall_policy_actions_headers_name" {
    type        = string
    description = "The name of the header field"
    default = "Content-Type"
    
}
variable "web_app_firewall_policy_actions_headers_value" {
    type        = string
    description = "The value of the header field"
    default = "application/json"
}
variable "web_app_firewall_policy_actions_body_text" {
    type        = string
    description = "Static response body text"
    default = "{\"code\":\"401\",\"message\":\"Unauthorized\"}"
}
variable "web_app_firewall_policy_actions_body_type" {
    type        = string
    description = "Type of HttpResponseBody"
    default = "STATIC_TEXT"
}

##############################
###  Access Control
##############################

variable "web_app_firewall_policy_request_access_control_default_action_name" {
    type        = string
    description = "References an default Action to take if no AccessControlRule was matched."
    default = "Pre-configured Allow Action"
}
variable "web_app_firewall_policy_request_access_control_rules_action_name" {
    type        = string
    description = "References action by name from actions defined in WebAppFirewallPolicy"
    default = "Pre-configured 401 Response Code Action"
}
variable "web_app_firewall_policy_request_access_control_rules_name" {
    type        = string
    description = "Rule name"
    default = "accesscontrol-test1"
}
variable "web_app_firewall_policy_request_access_control_rules_type" {
    type        = string
    description = "Type of WebAppFirewallPolicyRule"
    default = "ACCESS_CONTROL"
}
variable "web_app_firewall_policy_request_access_control_rules_condition" {
    type        = string
    description = "An expression that determines whether or not the rule action should be executed"
    default = "!i_contains(['US'], connection.source.geo.countryCode)"
}
variable "web_app_firewall_policy_request_access_control_rules_condition_language" {
    type        = string
    description = "The language used to parse condition from field"
    default = "JMESPATH"
}

##############################
###  Protection
##############################

variable "web_app_firewall_policy_request_protection_body_inspection_size_limit_in_bytes" {
    type        = string
    description = "Maximum size of inspected HTTP message body in bytes"
    default = "8192"
}
variable "web_app_firewall_policy_request_protection_rules_action_name" {
    type        = string
    description = "References action by name from actions defined in WebAppFirewallPolicy"
    default = "Pre-configured 401 Response Code Action"
}
variable "web_app_firewall_policy_request_protection_rules_condition_language" {
    type        = string
    description = "The language used to parse condition from field "
    default = "JMESPATH"
}
variable "web_app_firewall_policy_request_protection_rules_is_body_inspection_enabled" {
    type        = bool
    description = "Enables/disables body inspection for this protection rule"
    default = false
}
variable "web_app_firewall_policy_request_protection_rules_name" {
    type        = string
    description = "Rule name"
    default = "protectionrule-test"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key1" {
    type        = string
    description = "Unique key of referenced protection capability"
    default = "944300"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version1" {
    type        = string
    description = "Version of referenced protection capability"
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key2" {
    type        = string
    description = "Unique key of referenced protection capability"
    default = "944250"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version2" {
    type        = string
    description = "Version of referenced protection capability"
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key3" {
    type        = string
    description = "Unique key of referenced protection capability"
    default = "944240"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version3" {
    type        = string
    description = "Version of referenced protection capability"
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key4" {
    type        = string
    description = "Unique key of referenced protection capability"
    default = "944210"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version4" {
    type        = string
    description = "Version of referenced protection capability"
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_key5" {
    type        = string
    description = "Unique key of referenced protection capability"
    default = "944200"
}
variable "web_app_firewall_policy_request_protection_rules_protection_capabilities_version5" {
    type        = string
    description = "Version of referenced protection capability"
    default = "1"
}
variable "web_app_firewall_policy_request_protection_rules_type" {
    type        = string
    description = "Type of WebAppFirewallPolicyRule"
    default = "PROTECTION"
}

##############################
###  Rate Limiting
##############################

variable "web_app_firewall_policy_request_rate_limiting_rules_action_name" {
    type        = string
    description = "References action by name from actions defined in WebAppFirewallPolicy"
    default = "Pre-configured Check Action"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_period_in_seconds" {
    type        = string
    description = "Evaluation period in seconds"
    default = "3"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_requests_limit" {
    type        = string
    description = "Requests allowed per evaluation period"
    default = "3"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_configurations_action_duration_in_seconds" {
    type        = string
    description = "Evaluation period in seconds"
    default = "3"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_name" {
    type        = string
    description = "Rule Name"
    default = "ratelimit-test1"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_type" {
    type        = string
    description = "Type of WebAppFirewallPolicyRule"
    default = "REQUEST_RATE_LIMITING"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_condition" {
    type        = string
    description = "An expression that determines whether or not the rule action should be executed"
    default = "!i_contains(['US'], connection.source.geo.countryCode)"
}
variable "web_app_firewall_policy_request_rate_limiting_rules_condition_language" {
    type        = string
    description = "The language used to parse condition from field"
    default = "JMESPATH"
}
