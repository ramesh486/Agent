variable "compartment_ocid" {}
variable "alarm_display_name" {}
variable "alarm_severity" {}
variable "alarm_body" {}
variable "alarm_metric_compartment_id" {}
variable "alarm_metric_compartment_id_in_subtree" {}
variable "alarm_namespace" {}
variable "alarm_query" {}
variable "alarm_pending_duration" {}
variable "alarm_repeat_notification_duration" {}
variable "alarm_resolution" {}
variable "alarm_message_format" {}
variable "alarm_is_enabled" {}
variable "destination" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


