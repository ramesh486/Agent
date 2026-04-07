### Security Compartment

variable "compartment_ocid" {
  type        = string
  description = "OCID of the compartment where you want to create this vault"
}
variable region {
  type        = string
  description = "Region"
  default     = "us-ashburn-1"
}
variable tenancy_ocid {}

variable "vault_display_name" {
  type        = string
  description = "The display name of KMS Vault. It does not have to be unique, and it is changeable."
  default     = "oci_KMS-VAULT"
}

variable "vault_type" {
  type        = string
  description = "Whether or not the vault is a virtual private vault"
  default     = ""
}

