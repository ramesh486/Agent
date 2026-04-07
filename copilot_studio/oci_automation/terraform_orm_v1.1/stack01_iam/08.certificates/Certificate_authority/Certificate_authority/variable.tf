variable "compartment_ocid"{
    type        = string
    default     = ""
    description = "The OCID (Oracle Cloud Identifier) of the compartment"
}
variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
}

variable "certificate_authority_certificate_authority_config_config_type" {
  type          = string
  description   = ""
  default       = "ROOT_CA_GENERATED_INTERNALLY"

}

variable "certificate_authority_certificate_authority_config_signing_algorithm"{
    type          = string
  description   = ""
  default       = "SHA256_WITH_RSA"
}
variable "certificate_authority_certificate_authority_config_validity_time_of_validity_not_after"{
    type          = string
  description   = ""
  default       = "2024-07-05T21:10:29.999Z"
} 
variable "certificate_authority_certificate_authority_config_validity_time_of_validity_not_before" {
    type        = string
  description   = ""
  default       = "2023-07-04T21:10:29.999Z"
}
variable "certificate_authority_certificate_authority_config_version_name" {
    type          = string
  description   = ""
  default       = "versionName"
}

variable "certificate_authority_name" {
    type          = string
  description   = ""
  default       = "Sample_CA"
}
variable "certificate_authority_certificate_authority_rules_rule_type" {
    type          = string
  description   = ""
  default       = "CERTIFICATE_AUTHORITY_ISSUANCE_EXPIRY_RULE"
}
variable "certificate_authority_certificate_authority_rules_certificate_authority_max_validity_duration" {
    type          = string
  description   = ""
  default       = "P3650D"
}
variable "certificate_authority_certificate_authority_rules_leaf_certificate_max_validity_duration" {
    type          = string
  description   = ""
  default       = "P30D"
}

variable "certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_object_name_format" {
    type          = string
  description   = ""
  default       = "ca-1-crl"
}

variable "certificate_authority_description" {
    type          = string
  description   = ""
  default       = "My Example CA"
}

variable "kms_key_ocid" {
    type          = string
  description   = ""
  default       = "ocid1.key.oc1.ap-mumbai-1.cvrfi4laaaa5o.abrg6ljrld2zditgjegk4wpuijj3g5rogrbonkihuktmvur2yaopwxk2tpla"
}

variable "certificate_authority_certificate_authority_config_subject_common_name" {
    type          = string
  description   = ""
  default       = "www.example.com"
}
variable "object_storage_bucket_name" {
  type          = string
  description   = ""
  default       = "ca-crl-bucket"
}

