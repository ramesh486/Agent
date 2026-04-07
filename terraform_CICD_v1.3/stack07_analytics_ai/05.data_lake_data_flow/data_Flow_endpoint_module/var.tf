variable "compartment_ocid"{}
variable "dataflow_private_endpoint_display_name"{}
variable "private_endpoint_dns_zones"{}
variable "subnet_ocid" {}
variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}