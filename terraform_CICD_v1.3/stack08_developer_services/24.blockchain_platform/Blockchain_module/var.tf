variable "compartment_ocid" {}
variable "blockchain_platform_compute_shape" {}
variable "blockchain_platform_display_name" {}
variable "blockchain_platform_idcs_access_token" {}
variable "blockchain_platform_platform_role" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


