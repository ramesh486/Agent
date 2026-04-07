module "dns_steering_policy" {
    source                                  = "./dns_steering_policy_module"
    compartment_ocid                        = local.network_compartment_ocid
    project_tag                             = var.project_tag
    dns_steering_policy_display_name        = var.dns_steering_policy_display_name
    health_check_ocid                       = var.health_check_ocid
    dns_steering_policy_type                = var.dns_steering_policy_type
    ttl                                     = var.ttl
    dns_answers                             = local.dns_answers
    default_answer_data                     = local.default_answer_data
    filter_rule_default_answer_data         = local.filter_rule_default_answer_data
    limit_rule_variables                    = local.limit_rule_variables
}

module "dns_steering_policy_attachment" {
    source                                 = "./dns_steering_policy_attachment"
    count                                  = var.attach_dns_zone == "true" ? 1 : 0
    compartment_ocid                       = local.network_compartment_ocid
    dns_sub_domain_name                    = var.dns_sub_domain_name
    dns_steering_policy_ocid               = module.dns_steering_policy.dns_steering_policy_ocid
    dns_zone_ocid                          = var.dns_zone_ocid
}