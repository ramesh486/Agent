variable "compartment_ocid" {}

variable "knowledge_base_display_name" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}