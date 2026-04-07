variable "compartment_ocid" {}

variable "availability_domain" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable "mount_target_display_name" {}

variable "subnet_ocid" {}