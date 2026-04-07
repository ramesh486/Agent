variable "subscriber_clients_name" {}
variable "subscriber_clients_token" {}
variable "compartment_ocid" {}
variable "subscriber_usage_plans" {}
variable "subscriber_display_name" {}
variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}

