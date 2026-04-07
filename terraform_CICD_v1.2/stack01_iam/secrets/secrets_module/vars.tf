variable "compartment_ocid" {}
variable "secret_secret_content_content_type" {}
variable "secret_secret_content_content" {}
variable "secret_name" {}
variable "secret_description" {}
variable "vault_ocid" {}
variable "key_ocid" {}
variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}


