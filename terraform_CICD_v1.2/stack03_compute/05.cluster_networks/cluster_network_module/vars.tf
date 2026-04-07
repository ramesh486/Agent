variable "tenancy_ocid" {}

variable "region" {}

variable "compartment_ocid" {}

variable "instance_configuration_ocid" {}

variable "cluster_network_instance_pools_size" {}

variable "cluster_network_instance_pools_display_name" {}

variable "subnet_ocid" {}

variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}




















