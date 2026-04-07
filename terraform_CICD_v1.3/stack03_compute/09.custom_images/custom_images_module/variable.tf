variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "instance_ocid" {}
variable "launch_mode" {}
variable "image_timeout_create" {}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
