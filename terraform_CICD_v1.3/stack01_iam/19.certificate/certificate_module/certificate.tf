resource "oci_certificates_management_certificate" "test_certificate" {
    
    certificate_config {
        config_type = var.certificate_certificate_config_config_type
        certificate_profile_type = var.certificate_certificate_config_certificate_profile_type
        issuer_certificate_authority_id = var.issuer_certificate_authority_ocid
        subject {
            
            common_name = var.certificate_certificate_config_subject_common_name
        }
        subject_alternative_names {
           
            type = var.certificate_certificate_config_subject_alternative_names_type
            value = var.certificate_certificate_config_subject_alternative_names_value
        }
        validity {
           
            time_of_validity_not_after = var.certificate_certificate_config_validity_time_of_validity_not_after
            time_of_validity_not_before = var.certificate_certificate_config_validity_time_of_validity_not_before
        }
        version_name = var.certificate_certificate_config_version_name
    }
    compartment_id = var.compartment_ocid
    name = var.certificate_name

   
    certificate_rules {
        
        advance_renewal_period = var.certificate_certificate_rules_advance_renewal_period
        renewal_interval = var.certificate_certificate_rules_renewal_interval
        rule_type = var.certificate_certificate_rules_rule_type
    }
    
    description = var.certificate_description
    defined_tags            = var.definedTags
    freeform_tags           = var.freeformTags
  
}

