variable "tenancy_ocid" {}

variable "region" {}

variable "compartment_ocid" {}

variable subnet_ocid {}

variable "instance_configuration_ocid" {}

variable "instance_pool_size" {}

variable "instance_pool_state" {}

variable "instance_pool_display_name" {}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}