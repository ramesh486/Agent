variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "cool_down_in_seconds" {}
variable "auto_scaling_configuration_display_name" {}
variable "policy_display_name" {}
variable "capacity_initial" {}
variable "capacity_max" {}
variable "capacity_min" {}
variable "policy_type" {}
variable "action_type" {}
variable "action_value" {}
variable "metric_type" {}
variable "action_display_name" {}
variable "threshold_operator" {}
variable "threshold_value" {}
variable "action_type1" {}
variable "action_value1" {}
variable "rules_display_name" {}
variable "metric_type1" {}
variable "threshold_operator1" {}
variable "threshold_value1" {}
variable "instance_pool_ocid"{}
variable "auto_scaling_resources_type"{}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


