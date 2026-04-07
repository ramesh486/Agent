variable "certificate_authority_certificate_authority_config_config_type" {}
variable "certificate_authority_certificate_authority_config_subject_common_name" {}
variable "certificate_authority_certificate_authority_config_signing_algorithm"{}
variable "certificate_authority_certificate_authority_config_validity_time_of_validity_not_after"{} 
variable "certificate_authority_certificate_authority_config_validity_time_of_validity_not_before" {}
variable "certificate_authority_certificate_authority_config_version_name" {}
variable "certificate_authority_name" {}
variable "certificate_authority_certificate_authority_rules_rule_type" {}
variable "certificate_authority_certificate_authority_rules_certificate_authority_max_validity_duration" {}
variable "certificate_authority_certificate_authority_rules_leaf_certificate_max_validity_duration" {}
variable "certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_object_name_format" {}
variable "certificate_authority_description" {}
variable "kms_key_ocid" {}
variable "object_storage_bucket_name" {}
variable "compartment_ocid" {}
variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}
variable "key_management_endpoint"{}
  
