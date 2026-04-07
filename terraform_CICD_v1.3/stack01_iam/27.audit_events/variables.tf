
variable "tenancy_ocid" {
  type        = string
  description = "Target Tenancy OCID"
  default     = ""
}
variable compartment_id_in_subtree {
  type = bool
  default = true 
  description = "Compartment in subtree"
}

variable compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "region" {
  type        = string
  description = "Region"
  default     = ""
}

variable "configuration_retention_period_days" {
  type        = string
  description = "retention period"
  default     = "365"
}

variable "audit_event_end_time" {
  type        = string 
  description = "Audit event end time "
  default     = "2023-05-30T10:00:05Z"
}
variable "audit_event_start_time" {
  type        = string 
  description = "Audit event start time"
  default     ="2023-05-30T09:00:05Z"
}
