variable "compartment_ocid" {}

variable "availability_domain" {}
variable "container_restart_policy" {}
variable "image_url" {}

variable "arguments" {}
variable "command" {}
variable "container_instance_display_name" {}
variable "environment_variables" {}
variable "is_resource_principal_disabled" {}

variable "container_display_name" {}
variable "graceful_shutdown_timeout_in_seconds" {}


variable "shape"{}
variable "memory_in_gbs" {}
variable "ocpus" {}
variable "state"{}

variable "vnic_display_name" {}
variable "hostname_label" {}
variable "is_public_ip_assigned" {}
variable "nsg_ids" {}
variable "private_ip" {}
variable "skip_source_dest_check" {}
variable "subnet_ocid" {}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


