module network_firewall_policy_network_firewall {
    source                                                        = "./firewall_module"    
    compartment_ocid                                              = local.compartment_ocid
    network_firewall_display_name                                 = var.network_firewall_display_name
    subnet_ocid                                                   = local.subnet_ocid
    network_firewall_policy_ocid                                  = module.network_firewall_policy.network_firewall_policy_ocid
       

}
module "network_firewall_policy" {
    source                                                        = "./firewall_policy_module"
    
    compartment_ocid                                              = var.compartment_ocid
    network_firewall_policy_display_name                          = var.network_firewall_policy_display_name
    network_firewall_policy_application_lists_key                 = var.network_firewall_policy_application_lists_key
    network_firewall_policy_application_lists_type                = var.network_firewall_policy_application_lists_type
    network_firewall_policy_ip_address_lists_name                 = var.network_firewall_policy_ip_address_lists_name
    network_firewall_policy_ip_address_lists_value                = var.network_firewall_policy_ip_address_lists_value
    network_firewall_policy_security_rules_action                 = var.network_firewall_policy_security_rules_action
    network_firewall_policy_security_rules_condition_applications = var.network_firewall_policy_security_rules_condition_applications
    network_firewall_policy_security_rules_condition_destinations = var.network_firewall_policy_security_rules_condition_destinations
    network_firewall_policy_security_rules_condition_sources      = var.network_firewall_policy_security_rules_condition_sources
    network_firewall_policy_security_rules_condition_urls         = var.network_firewall_policy_security_rules_condition_urls
    network_firewall_policy_security_rules_inspection             = var.network_firewall_policy_security_rules_inspection
    network_firewall_policy_security_rules_name                   = var.network_firewall_policy_security_rules_name
    network_firewall_policy_url_lists_type                        = var.network_firewall_policy_url_lists_type
    network_firewall_policy_url_lists_key                         = var.network_firewall_policy_url_lists_key
}


