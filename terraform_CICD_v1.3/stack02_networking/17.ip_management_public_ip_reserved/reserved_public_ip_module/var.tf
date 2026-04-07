variable "region" { }

variable "tenancy_ocid" { }

variable "compartment_ocid" { }

variable "display_name" { }

variable "lifetime" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
