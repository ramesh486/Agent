variable "compartment_ocid" {}
variable "display_name" {}
variable "cluster_admin_password" {}
variable "is_high_availability" {}
variable "is_secure" {}
variable "cluster_version" {}
variable "master_node_shape" {}
variable "master_subnet_ocid" {}

variable "master_node_block_volume_size_in_gbs" {}
variable "master_node_number_of_nodes" {}

variable "util_node_shape" {}

variable "util_node_shape_block_volume_size_in_gbs" {}
variable "util_node_shape_number_of_nodes" {}
variable "util_subnet_ocid" {}

variable "worker_node_shape" {}

variable "worker_subnet_ocid" {}
variable "worker_node_shape_block_volume_size_in_gbs" {}
variable "worker_node_number_of_nodes" {}
variable "cluster_public_key" {}
variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

