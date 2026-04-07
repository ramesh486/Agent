variable "service_connector_compartment_ocid" {}
variable "service_connector_policy_display_name" {}
variable "service_connector_policy_description" {}
variable "policy_statements"{}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
