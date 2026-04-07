resource oci_network_firewall_network_firewall_policy this {
   
    compartment_id           = var.compartment_ocid
    application_lists {
      application_list_name  = var.network_firewall_policy_application_lists_key
        application_values {
          type               = var.network_firewall_policy_application_lists_type
        }
    }
    display_name = var.network_firewall_policy_display_name
    ip_address_lists {
        ip_address_list_name  = var.network_firewall_policy_ip_address_lists_name
        ip_address_list_value = var.network_firewall_policy_ip_address_lists_value
    }
    security_rules {
       
        action = var.network_firewall_policy_security_rules_action
        condition {
            applications      = var.network_firewall_policy_security_rules_condition_applications
            destinations      = var.network_firewall_policy_security_rules_condition_destinations
            sources           = var.network_firewall_policy_security_rules_condition_sources
            urls              = var.network_firewall_policy_security_rules_condition_urls
        }
        name                  = var.network_firewall_policy_security_rules_name
        inspection            = var.network_firewall_policy_security_rules_inspection
    }
    url_lists {
        url_list_name         = var.network_firewall_policy_url_lists_key
        url_list_values {
          type                = var.network_firewall_policy_url_lists_type
        }
    }
}

