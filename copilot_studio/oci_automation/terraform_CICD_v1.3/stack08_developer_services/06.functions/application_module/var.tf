variable "compartment_ocid" {}
variable "display_name" {}
variable "subnet_ocid" {}
variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

