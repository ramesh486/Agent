#################################################
# Common Variables
#################################################

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


variable "region" {
  type         = string
  default      = ""
  description  = "Select the Region"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "DNS_key"
        }
      freeformTags = {}
  }
}

variable "tenancy_ocid" {
type           = string
description    =  "Target Tenancy OCID"
default        = ""
}

#################################################
# DNS TSIG Variables
#################################################

variable "tsig_key_algorithm" {
  type         = string
  default      = "hmac-sha256"
  description  = "The public key's algorithm used to encrypt or decrypt data."
}
variable "tsig_key_name" {
  type         = string
  default      = ""
  description  = "TSIG Key Display Name"
}

variable "tsig_key_secret" {
  type         = string
  default      = ""
  description  = "The base64 string encoding the binary shared secret that corresponds to the key (max: 255 characters)."

}
