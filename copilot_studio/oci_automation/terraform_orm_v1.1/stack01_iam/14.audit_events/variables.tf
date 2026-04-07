
variable "tenancy_ocid" {
  type        = string
  description = "Target Tenancy OCID"
  default     = ""
}


variable "compartment_ocid" {
    type = string
    default = ""
    description = ""

}

variable "region" {
  type        = string
  description = "Region"
  default     = "us-ashburn-1"
}

variable "configuration_retention_period_days" {
     description = ""
  default     = "365"
  
}

variable "audit_event_end_time" {
     description = "Audit event end time "
     default     = "2023-05-30T10:00:05Z"
  
}
variable "audit_event_start_time" {
     description = "Audit event start time"
     default     ="2023-05-30T09:00:05Z"
  
}