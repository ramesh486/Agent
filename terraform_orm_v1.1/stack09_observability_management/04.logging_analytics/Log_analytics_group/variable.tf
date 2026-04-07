variable "compartment_ocid"{
    type        = string
    default     = ""
    description = "compartment ocid"
}
variable "region"{
    type        = string
    default     = "us-ashburn-1"
    description = "region name"
}
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

