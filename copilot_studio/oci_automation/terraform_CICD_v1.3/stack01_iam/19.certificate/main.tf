#####################
## certificate
#####################
module certificate  {
source                                                              = "./certificate_module"  
certificate_certificate_config_config_type                          = var.certificate_certificate_config_config_type
certificate_certificate_config_certificate_profile_type             = var.certificate_certificate_config_certificate_profile_type
certificate_certificate_config_subject_common_name                  = var.certificate_certificate_config_subject_common_name
certificate_certificate_config_subject_alternative_names_type       = var.certificate_certificate_config_subject_alternative_names_type
certificate_certificate_config_subject_alternative_names_value      = var.certificate_certificate_config_subject_alternative_names_value
certificate_certificate_config_validity_time_of_validity_not_after  = var.certificate_certificate_config_validity_time_of_validity_not_after
certificate_certificate_config_validity_time_of_validity_not_before = var.certificate_certificate_config_validity_time_of_validity_not_before
certificate_certificate_config_version_name                         = var.certificate_certificate_config_version_name
compartment_ocid                                                    = local.compartment_ocid
certificate_name                                                    = var.certificate_name
certificate_certificate_rules_advance_renewal_period                = var.certificate_certificate_rules_advance_renewal_period
certificate_certificate_rules_renewal_interval                      = var.certificate_certificate_rules_renewal_interval
certificate_certificate_rules_rule_type                             = var.certificate_certificate_rules_rule_type
certificate_description                                             = var.certificate_description
issuer_certificate_authority_ocid                                   = var.issuer_certificate_authority_ocid
certificate_state                                                   = var.certificate_state  
definedTags                                                         = var.project_tag.definedTags
freeformTags                                                        = var.project_tag.freeformTags
}