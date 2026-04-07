variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "region" {}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default     = {
      definedTags = {}
      freeformTags = {}
  }
}
variable "volume_group_display_name" {
  type = string
  default = "Test Volume Group"
  description = "Name of the volume group"
}

variable "volume_ocids" {
  type = list
  default = []
  description = "OCIDs of the volume"
}

