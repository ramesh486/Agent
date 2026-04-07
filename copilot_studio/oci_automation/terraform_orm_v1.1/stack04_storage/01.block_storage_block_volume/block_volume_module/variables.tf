variable "compartment_ocid" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
variable "volume_display_name" {}

variable "volume_is_auto_tune_enabled" {}

variable "volume_size_in_gbs" {}

variable "volume_vpus_per_gb" {}