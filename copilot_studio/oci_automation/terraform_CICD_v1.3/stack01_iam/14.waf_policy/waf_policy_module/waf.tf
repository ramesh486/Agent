
resource "oci_waf_web_app_firewall_policy" "test_web_app_firewall_policy" {
    compartment_id = var.compartment_ocid
    actions {
        name = var.web_app_firewall_policy_actions_name1
        type = var.web_app_firewall_policy_actions_type1
    }
    actions {
        name = var.web_app_firewall_policy_actions_name2
        type = var.web_app_firewall_policy_actions_type2
    }
    actions {
        name = var.web_app_firewall_policy_actions_name3
        type = var.web_app_firewall_policy_actions_type3
        code = var.web_app_firewall_policy_actions_code
        headers {
            name = var.web_app_firewall_policy_actions_headers_name
            value = var.web_app_firewall_policy_actions_headers_value
        }
        body {
            text = var.web_app_firewall_policy_actions_body_text
            type = var.web_app_firewall_policy_actions_body_type
        }
    }
    defined_tags      = var.project_tag.definedTags
    freeform_tags     = var.project_tag.freeformTags
    display_name      = var.web_app_firewall_policy_display_name
    

request_access_control {
        default_action_name = var.web_app_firewall_policy_request_access_control_default_action_name
        rules {
            action_name = var.web_app_firewall_policy_request_access_control_rules_action_name
            name = var.web_app_firewall_policy_request_access_control_rules_name
            type = var.web_app_firewall_policy_request_access_control_rules_type
            condition = var.web_app_firewall_policy_request_access_control_rules_condition
            condition_language = var.web_app_firewall_policy_request_access_control_rules_condition_language
        }
    }

request_protection {
    body_inspection_size_limit_in_bytes = var.web_app_firewall_policy_request_protection_body_inspection_size_limit_in_bytes
    rules {
            action_name = var.web_app_firewall_policy_request_protection_rules_action_name
            condition_language = var.web_app_firewall_policy_request_protection_rules_condition_language
            is_body_inspection_enabled = var.web_app_firewall_policy_request_protection_rules_is_body_inspection_enabled
            name = var.web_app_firewall_policy_request_protection_rules_name
            protection_capabilities {
                key = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_key1
                version = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_version1
            }
            protection_capabilities {
                key = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_key2
                version = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_version2
            }
            protection_capabilities {
                key = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_key3
                version = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_version3
            }
            protection_capabilities {
                key = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_key4
                version = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_version4
            }
            protection_capabilities {
                key = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_key5
                version = var.web_app_firewall_policy_request_protection_rules_protection_capabilities_version5
            }
            type = var.web_app_firewall_policy_request_protection_rules_type
       }
}  

request_rate_limiting {
        rules {
            action_name = var.web_app_firewall_policy_request_rate_limiting_rules_action_name
            configurations {
                period_in_seconds = var.web_app_firewall_policy_request_rate_limiting_rules_configurations_period_in_seconds
                requests_limit = var.web_app_firewall_policy_request_rate_limiting_rules_configurations_requests_limit
                action_duration_in_seconds = var.web_app_firewall_policy_request_rate_limiting_rules_configurations_action_duration_in_seconds
            }
            name = var.web_app_firewall_policy_request_rate_limiting_rules_name
            type = var.web_app_firewall_policy_request_rate_limiting_rules_type
            condition = var.web_app_firewall_policy_request_rate_limiting_rules_condition
            condition_language = var.web_app_firewall_policy_request_rate_limiting_rules_condition_language
        }
    }
}
