variable "tenancy_ocid" { }
variable "compartment_ocid" {}
variable "compartment_name" {}
variable "compartment_description" {}
variable "enable_delete" {}

variable "definedTags" {
  type = map
  default = {}
}
variable "freeformTags" {
  type = map
  default = {}
}
