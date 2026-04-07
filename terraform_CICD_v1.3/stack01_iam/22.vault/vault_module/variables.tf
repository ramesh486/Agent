variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "vault_display_name" {}
variable "vault_type" {}
variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}