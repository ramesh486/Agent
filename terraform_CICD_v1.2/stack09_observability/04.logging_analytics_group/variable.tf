
variable "region"{
    type        = string
    default     = "us-ashburn-1"
    description = "region name"
}

variable "tenancy_ocid" {
  default     = "" 
  type        = string
  description = "Tenancy OCID"
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "log analytics loggroup"
        }
      freeformTags = {}
  }
}

variable monitorimg_compartment_id_in_subtree {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable monitoring_compartment_name {
    type        = string
    default     = ""
    description = "Compartment Name to deploy the Alarms"
}

# variable "app_compartment_id_in_subtree" {
#     type = bool
#     default = true
#     description = "Compartment ID in Subtree"
# }

# variable "app_compartment_name" {
#     type        = string
#     default     = ""
#     description = "Compartment Name of the objectstorage"
# }

variable "log_analytics_log_group_display_name"{
    type        = string
    default     = "Example_group"
    description = "Log analytics group name"

}
variable "log_analytics_log_group_description"{
    type        = string
    default     = "Log_analytics_group_name"
    description = "Log analytics description"
}

