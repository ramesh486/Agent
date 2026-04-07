variable "compartment_ocid" {}
variable "gateway_endpoint_type" {}
variable "gateway_display_name" {}
variable "subnet_ocid" {}
variable "certificate_ocid" {}
variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}
