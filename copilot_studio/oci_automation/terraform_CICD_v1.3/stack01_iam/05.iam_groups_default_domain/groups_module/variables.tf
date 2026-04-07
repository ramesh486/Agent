variable "tenancy_ocid" {}

variable "group_description" {}

variable "group_name" {}

variable project_tag { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}