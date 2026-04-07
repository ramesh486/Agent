module certificate_authority {
 source                                                                                        = "./authority_module"
 compartment_ocid                                                                              = local.compartment_ocid
 certificate_authority_certificate_authority_config_subject_common_name                        = var.certificate_authority_certificate_authority_config_subject_common_name
 certificate_authority_certificate_authority_config_config_type                                = var.certificate_authority_certificate_authority_config_config_type
 certificate_authority_certificate_authority_config_signing_algorithm                          = var.certificate_authority_certificate_authority_config_signing_algorithm
 certificate_authority_certificate_authority_config_validity_time_of_validity_not_after        = var.certificate_authority_certificate_authority_config_validity_time_of_validity_not_after
 certificate_authority_certificate_authority_config_validity_time_of_validity_not_before       = var.certificate_authority_certificate_authority_config_validity_time_of_validity_not_before
 certificate_authority_certificate_authority_config_version_name                               = var.certificate_authority_certificate_authority_config_version_name
 kms_key_ocid                                                                                  = local.kms_key_ocid 
 certificate_authority_name                                                                    = var.certificate_authority_name
 certificate_authority_certificate_authority_rules_rule_type                                   = var.certificate_authority_certificate_authority_rules_rule_type
 certificate_authority_certificate_authority_rules_certificate_authority_max_validity_duration = var.certificate_authority_certificate_authority_rules_certificate_authority_max_validity_duration
 certificate_authority_certificate_authority_rules_leaf_certificate_max_validity_duration      = var.certificate_authority_certificate_authority_rules_leaf_certificate_max_validity_duration
 certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_object_name_format = var.certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_object_name_format
 object_storage_bucket_name                                                                    = var.object_storage_bucket_name
 certificate_authority_description                                                             = var.certificate_authority_description
 project_tag                                                                                   = var.project_tag
 key_management_endpoint                                                                       = var.key_management_endpoint
}


