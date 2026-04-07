### Security Compartment

variable security_compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable security_compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable region {
  type        = string
  description = "Region"
  default     = ""
}

variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "vault_display_name" {
  type        = string
  description = "The display name of KMS Vault. It does not have to be unique, and it is changeable."
  default     = "oci_KMS-VAULT"
}

variable "vault_type" {
  type        = string
  description = "Whether or not the vault is a virtual private vault"
  default     = "VIRTUAL_PRIVATE"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Vault"
        }
      freeformTags = {}
  }
}
