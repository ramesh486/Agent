variable "region" { }

variable "tenancy_ocid" { }

variable "compartment_ocid" { }

variable "instance_count" { }

variable "capacity_reservation_display_name" { }
variable "instance_shape" { }

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


