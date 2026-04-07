variable "certificate_certificate_config_config_type" {}
variable "certificate_certificate_config_certificate_profile_type" {}
variable "certificate_certificate_config_subject_common_name" {}
variable "certificate_certificate_config_subject_alternative_names_type" {}
variable "certificate_certificate_config_subject_alternative_names_value"{}
variable "certificate_certificate_config_validity_time_of_validity_not_after" {}
variable "certificate_certificate_config_validity_time_of_validity_not_before" {}
variable "certificate_certificate_config_version_name" {}
variable "compartment_ocid" {}
variable "certificate_name" {}
variable "certificate_certificate_rules_advance_renewal_period" {}
variable "certificate_certificate_rules_renewal_interval" {}
variable "certificate_certificate_rules_rule_type" {}
variable "certificate_description" {}
variable "issuer_certificate_authority_ocid" {}
variable "certificate_state" {}
variable "definedTags" {
  type = map
  default = {}
}
variable "freeformTags" {
  type = map
  default = {}
} 




