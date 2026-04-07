
variable "tenancy_ocid" {
  type    = string
  default = ""
  description = "Give here tenancy ocid"

}

variable "region" {
  type    = string
  default = "us-ashburn-1"
  description = "Give here region"
}

variable "app_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Autoscaling_configuration"
        }
      freeformTags = {}
  }
}

# ----------------------------------------
#  Auto Scaling Configuration
# ----------------------------------------
variable "cool_down_in_seconds" {
  type         = number
  default      = "300"
  description  = "Cool down in seconds"
}

variable "auto_scaling_configuration_display_name" {
  type        = string
  default     = "TestAutoScalingConfiguration"
  description = "Auto scaling configuration display name"
}

variable "capacity_initial" {
  type        = number
  default     = 2
  description = "Provide capacity initial"
}

variable "capacity_max" {
  type        = number
  default     = 4
  description = "Provide capacity max"
}

variable "capacity_min" {
  type        = number
  default     = 2
  description = "Provide capacity min"
}

variable "policy_display_name" {
  type        = string
  default     = "TestPolicy"
  description = "Policy display name"
}

variable "policy_type" {
  type        = string
  default     = "threshold"
  description = "Policy type"
}

variable "action_type" {
  type        = string
  default     = "CHANGE_COUNT_BY"
  description = "Provide action type"
}

variable "action_value" {
  type        = number
  default     = 1
  description = "Provide action value"
}

variable "action_display_name" {
  type        = string
  default     = "TestScaleOutRule"
  description = "Provide action display name"
}

variable "metric_type" {
  type        = string
  default     = "CPU_UTILIZATION"
  description = "Provide metric type"
}

variable "threshold_operator" { #
  type        = string
  default     = "GT"
  description = "Threshold operator"
}

variable "threshold_value" {
  type        = number
  default     = 90
  description = "Threshold value"
}

variable "action_type1" {
  type        = string
  default     = "CHANGE_COUNT_BY"
  description = "Action type"
}

variable "action_value1" {
  type        = number
  default     = -1
  description = "Action value"
}

variable "rules_display_name" {
  type        = string
  default     = "testScaleInRule"
  description = "Rules display name"
}

variable "metric_type1" {
  type        = string
  default     = "CPU_UTILIZATION"
  description = "Metric type"
}

variable "threshold_operator1" {
  type        = string
  default     = "LT"
  description = "Threshold operator1"
}

variable "threshold_value1" {
  type        = number
  default     = 1
  description = "Threshold value1"
}

variable "auto_scaling_resources_type" {
  type        = string
  default     = "instancePool"
  description = "Auto scaling resources type"
}


variable "instance_pools_display_name" {
  type        = string
  default     = ""
  description = "Instance pool Name"
}


