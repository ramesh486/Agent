variable "compartment_ocid" { }

variable "migration_display_name" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

