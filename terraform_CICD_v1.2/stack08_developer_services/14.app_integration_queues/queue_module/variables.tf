variable "region" {}
variable "compartment_ocid" {}
variable "tag_namespace_description" {}
variable "tag_namespace_name" {}
variable "queue_display_name" {}
variable "queue_retention_in_seconds" {}
variable "queue_timeout_in_seconds" {}
variable "queue_visibility_in_seconds" {}
variable "tag_description" {}
variable "tag_name" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
