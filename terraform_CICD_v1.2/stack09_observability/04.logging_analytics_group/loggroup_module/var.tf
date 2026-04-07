variable "compartment_ocid"{}
variable "log_analytics_log_group_display_name"{}
variable "log_analytics_log_group_description"{}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
