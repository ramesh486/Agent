variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "availability_domain" {}
variable "compute_cluster_display_name" {}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
