variable "compartment_ocid" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable "file_system_display_name" {}

variable "mount_target_display_name" {}

variable "export_path" {}

variable "subnet_ocid" {}

