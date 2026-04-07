####################
# Common Variables
####################

variable "tenancy_ocid" {
  description = "Target tenancy OCID"
  type        = string
  default     = ""
}

variable compartment_name {
    type = string
    default = ""
    description = "Compartment Name to deploy the resource"
}

variable compartment_id_in_subtree {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "region" {
   type        = string
  description = "Region"
  default     = "us-ashburn-1"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Secrets"
        }
      freeformTags = {}
  }
}

####################
# Secrets Variables
####################

variable "secret_secret_content_content_type" {
  type = string
  default = "BASE64"
  description = "The content type of the secret.{BASE64 or PLAIN-TEXT}"
}

variable "secret_secret_content_content" {
  type = string
  default = "PHZhcj4mbHQ7YmFzZTY0X2VuY29kZWRfc2VjcmV0X2NvbnRlbnRzJmd0OzwvdmFyPg=="
  description = "The content of the secret."
}

variable "secret_name" {
  type = string
  default = "secret"
  description = "Name for the secret"
}

variable "secret_description" {
  type = string
  default = "Secrets"
  description = "Description of the secret"
}

variable "vault_display_name" {
  type = string
  default = "oci_KMS-VAULT"
  description = "The Name of the vault where you want to create the secret."
}

variable "master_display_name" {
  type = string
  default = "Oke_key"
  description = "The Name of the master encryption key that is used to encrypt the secret."
}

