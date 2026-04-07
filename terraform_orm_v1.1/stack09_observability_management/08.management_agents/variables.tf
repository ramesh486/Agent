variable "compartment_ocid"{}
variable "region"{
    default     = "us-ashburn-1"
}
variable "management_agent_install_key_display_name"{
    type        = string
    default     = "Test_agent"
    description = "management_agent_install_key "
}
variable "management_agent_install_key_allowed_key_install_count"{
    type        = number
    default     = 10
    description = "management_agent_install_key_allowed_key "
}
variable "management_agent_install_key_time_expires"{
    type        = string
    default     = "2023-06-08T17:27:44.398Z"
    description = "management_agent_install_key_time "
}

variable "management_agent_install_key_is_unlimited"{
    type        = bool
    default     = true
    description = "management_agent_install_key_unlimited "
}
