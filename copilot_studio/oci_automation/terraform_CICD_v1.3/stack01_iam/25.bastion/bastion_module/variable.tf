variable "tenancy_ocid" {}

variable "bastion_type" {}

variable "client_cidr_block_allow_list" {}

variable "compartment_ocid" {}

variable "max_session_ttl_in_seconds" {}

variable "bastion_name" {}

variable "subnet_ocid" {}

variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}