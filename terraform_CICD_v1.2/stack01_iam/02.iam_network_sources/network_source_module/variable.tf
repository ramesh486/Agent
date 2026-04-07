
variable "compartment_ocid" {}
variable region {}
variable "network_source_description" {}
variable "network_source_name" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

