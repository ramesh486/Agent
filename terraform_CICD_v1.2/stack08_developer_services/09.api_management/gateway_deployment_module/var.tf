variable "compartment_ocid" {}
variable "path_prefix" {}
variable "token_locations" {}
variable "type" {}
variable "url" {}
variable "path" {}
variable "methods" {}
variable "gateway_ocid" {}

variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}

