variable "compartment_ocid" {}

variable "availability_domain" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable "file_system_display_name" {}



