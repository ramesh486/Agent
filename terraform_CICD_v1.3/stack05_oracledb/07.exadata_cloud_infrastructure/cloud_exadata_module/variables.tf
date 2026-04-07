# ----------------------------------------------
# Common Variables
# ----------------------------------------------

variable "compartment_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


# ----------------------------------------------
# Cloud Exadata Infrastructure Variables
# ----------------------------------------------

variable "availability_domain" {}

variable "cloud_exadata_infrastructure_display_name" {
  default = ""
}

variable "cloud_exadata_infrastructure_shape" {
  default = ""
}

variable "cloud_exadata_infrastructure_compute_count" {
  default = "2"
}

variable "cloud_exadata_infrastructure_customer_contacts_email" {
  default = ""
}

variable "cloud_exadata_infrastructure_maintenance_window_preference" {
  default = "NO_PREFERENCE"
}

variable "cloud_exadata_infrastructure_maintenance_window_is_custom_action_timeout_enabled" {}

variable "cloud_exadata_infrastructure_maintenance_window_custom_action_timeout_in_mins" {
  default = ""
}

variable "cloud_exadata_infrastructure_maintenance_window_days_of_week_name" {
  default = ""
}

variable "cloud_exadata_infrastructure_maintenance_window_hours_of_day" {
  default = ""
}

variable "cloud_exadata_infrastructure_maintenance_window_is_monthly_patching_enabled" {
  default = ""
}

variable "cloud_exadata_infrastructure_maintenance_window_lead_time_in_weeks" {
  default = ""
}

variable "cloud_exadata_infrastructure_maintenance_window_months_name" {
  default = ""
}

variable "cloud_exadata_infrastructure_maintenance_window_patching_mode" {
  default = ""
}


