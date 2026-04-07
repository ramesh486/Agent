variable "certificate_certificate" {}
variable "compartment_ocid" {}
variable "certificate_private_key" {}
variable "certificate_display_name" {}

variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}