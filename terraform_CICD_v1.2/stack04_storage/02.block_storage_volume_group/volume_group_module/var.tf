variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "definedTags" {
  type    = map
  default = {}
}
variable "freeformTags" {
  type    = map
  default = {}
}

variable "volume_group_display_name" {}
variable  "volume_ocid"{}
