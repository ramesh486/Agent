variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}

variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter"   = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Certificate"
        }
      freeformTags = {}
  }
}

variable "certificate_certificate_config_config_type" {
  type        = string
  description = "The type of configuration for the certificate"
  default     = "ISSUED_BY_INTERNAL_CA"
}

variable "certificate_certificate_config_subject_common_name" {
  type        = string
  description = "The common name for the certificate subject"
  default     = "www.example.com"
}

variable "certificate_certificate_config_subject_alternative_names_type" {
  type        = string
  description = "The type of alternative names for the certificate subject"
  default     = "DNS"
}

variable "certificate_certificate_config_subject_alternative_names_value" {
  type        = string
  description = "The value of the alternative names for the certificate subject"
  default     = "value"
}

variable "certificate_certificate_config_validity_time_of_validity_not_after" {
  type        = string
  description = "The time of validity for the certificate (not after)"
  default     = "2023-10-27T21:10:29.999Z"
}

variable "certificate_certificate_config_validity_time_of_validity_not_before" {
  type        = string
  description = "The time of validity for the certificate (not before)"
  default     = "2023-07-08T03:59:10Z"
}

variable "certificate_certificate_config_version_name" {
  type        = string
  description = "The name of the certificate version"
  default     = "myCertVersion"
}

variable "certificate_name" {
  type        = string
  description = "The name of the certificate"
  default     = "Certificate_Testing"
}

variable "certificate_certificate_rules_advance_renewal_period" {
  type        = string
  description = "The advance renewal period for the certificate rules"
  default     = "P60D"
}

variable "certificate_certificate_rules_renewal_interval" {
  type        = string
  description = "The renewal interval for the certificate rules"
  default     = "P365D"
}

variable "certificate_certificate_rules_rule_type" {
  type        = string
  description = "The type of rule for the certificate"
  default     = "CERTIFICATE_RENEWAL_RULE"

}

variable "certificate_description" {
  type        = string
  description = "The description of the certificate"
  default     = "Description of certificate"
}

variable "certificate_certificate_config_certificate_profile_type" {
  type        = string
  default  = "TLS_SERVER_OR_CLIENT"
  description = "The profile type  for the certificate"
}

variable "issuer_certificate_authority_ocid" {
  type        = string
  default     = ""
  description = "issuer certificate authority ocid"
}
variable "certificate_state" {
  type        = string
  default     = "ACTIVE"
  description = "The State of the Certificate"
}
