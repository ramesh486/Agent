variable "compartment_ocid" {}
variable "api_content" {}
variable "api_display_name" {}
variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}