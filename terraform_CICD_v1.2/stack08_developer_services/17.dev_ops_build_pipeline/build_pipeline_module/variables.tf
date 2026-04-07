variable "region" { }

variable "tenancy_ocid" { }

variable "compartment_ocid" { }

variable "parameter_name" { }

variable "default_value" { }

variable "description" { }

variable "display_name" { }

variable "project_name" { }

variable "notification_topic" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


