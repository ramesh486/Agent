variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}

variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
}

variable compartment_compartment_id_in_subtree {
    type        = bool
    default     = true 
    description = "Compartment in subtree"
}

variable compartment_name {
  type          = string
  default       = ""
  description   = "Compartment name to deploy the resources"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Certificate Authority"
        }
      freeformTags = {}
  }
}


variable "certificate_authority_certificate_authority_config_config_type" {
  type          = string
  description   = "The configuration type for the certificate authority"
  default       = "ROOT_CA_GENERATED_INTERNALLY"

}

variable "certificate_authority_certificate_authority_config_signing_algorithm"{
  type          = string
  description   = "The signing algorithm to be used by the certificate authority"
  default       = "SHA256_WITH_RSA"
}

variable "certificate_authority_certificate_authority_config_validity_time_of_validity_not_after"{
  type          = string
  description   = "The time of validity indicating when the certificate authority is no longer valid after."
  default       = "2024-07-05T21:10:29.999Z"
} 

variable "certificate_authority_certificate_authority_config_validity_time_of_validity_not_before" {
  type          = string
  description   = "The time of validity indicating when the certificate authority becomes valid"
  default       = "2023-07-04T21:10:29.999Z"
}
variable "certificate_authority_certificate_authority_config_version_name" {
  type          = string
  description   = "The version name for the certificate authority configuration"
  default       = "versionName"
}

variable "certificate_authority_name" {
  type          = string
  description   = "The name of the certificate authority"
  default       = "Sample_CA"
}
variable "certificate_authority_certificate_authority_rules_rule_type" {
  type          = string
  description   = "The rule type for the certificate authority"
  default       = "CERTIFICATE_AUTHORITY_ISSUANCE_EXPIRY_RULE"
}
variable "certificate_authority_certificate_authority_rules_certificate_authority_max_validity_duration" {
  type          = string
  description   = "The maximum validity duration for the certificate authority"
  default       = "P3650D"
}
variable "certificate_authority_certificate_authority_rules_leaf_certificate_max_validity_duration" {
  type          = string
  description   = "The maximum validity duration for leaf certificates issued by the certificate authority"
  default       = "P30D"
}

variable "certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_object_name_format" {
  type          = string
  description   = "The object name format for the certificate revocation list stored in Object Storage"
  default       = "ca-1-crl"
}

variable "certificate_authority_description" {
  type          = string
  description   = "A description of the certificate authority."
  default       = "My Example CA"
}

variable "key_management_endpoint" {
  type          = string
  description   = "Management end point Name"
  default       = ""
}

variable "certificate_authority_certificate_authority_config_subject_common_name" {
  type          = string
  description   = "The common name to be used in the subject of the certificate authority"
  default       = "www.example.com"
}
variable "object_storage_bucket_name" {
  type          = string
  description   = "The name of the Object Storage bucket where the CA Certificate Revocation List (CRL) will be stored"
  default       = ""
}

