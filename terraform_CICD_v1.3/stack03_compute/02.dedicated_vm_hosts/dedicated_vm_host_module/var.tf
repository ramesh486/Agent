variable "tenancy_ocid" {}

variable "region" {}

variable "compartment_ocid" {}

variable "dedicated_vm_host_shape" {}

variable "display_name" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
