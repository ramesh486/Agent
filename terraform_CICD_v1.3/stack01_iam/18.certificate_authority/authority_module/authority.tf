resource oci_certificates_management_certificate_authority this {

  certificate_authority_config {
    config_type                                  = var.certificate_authority_certificate_authority_config_config_type
    subject {
    common_name                                  = var.certificate_authority_certificate_authority_config_subject_common_name
    }
    signing_algorithm                            = var.certificate_authority_certificate_authority_config_signing_algorithm
    validity {
      time_of_validity_not_after                 = var.certificate_authority_certificate_authority_config_validity_time_of_validity_not_after
      time_of_validity_not_before                = var.certificate_authority_certificate_authority_config_validity_time_of_validity_not_before
    }
    version_name                                 = var.certificate_authority_certificate_authority_config_version_name
  }
  compartment_id                                 = var.compartment_ocid
  kms_key_id                                     = var.kms_key_ocid  
  name                                           = var.certificate_authority_name
  certificate_authority_rules {
     rule_type                                   = var.certificate_authority_certificate_authority_rules_rule_type
     certificate_authority_max_validity_duration = var.certificate_authority_certificate_authority_rules_certificate_authority_max_validity_duration
    leaf_certificate_max_validity_duration       = var.certificate_authority_certificate_authority_rules_leaf_certificate_max_validity_duration
  }
  certificate_revocation_list_details {
    
    object_storage_config {
      object_storage_bucket_name                 = var.object_storage_bucket_name 
      object_storage_object_name_format          = var.certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_object_name_format
    }
  }
  description                                    = var.certificate_authority_description
  defined_tags                                   = var.project_tag.definedTags
  freeform_tags                                  = var.project_tag.freeformTags
  
}
