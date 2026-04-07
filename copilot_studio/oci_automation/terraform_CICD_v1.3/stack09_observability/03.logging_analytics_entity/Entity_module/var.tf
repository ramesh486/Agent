variable "compartment_ocid"{}
variable "log_analytics_entity_entity_type_name"{}
variable "log_analytics_entity_name"{}
variable "log_analytics_entity_hostname"{}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
