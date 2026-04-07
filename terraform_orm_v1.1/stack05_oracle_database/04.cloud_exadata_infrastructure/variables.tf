variable "region" {}
variable "tenancy_ocid" {}
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

variable "cloud_exadata_infrastructure_display_name" {
  default = "cloud_exadata_infra"
}

variable "cloud_exadata_infrastructure_shape" {
  default = "Exadata.Base.48"
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

variable "cloud_exadata_infrastructure_maintenance_window_is_custom_action_timeout_enabled" {
  default = "false"
}

variable "cloud_exadata_infrastructure_maintenance_window_custom_action_timeout_in_mins" {
  default = "15"
}

variable "cloud_exadata_infrastructure_maintenance_window_days_of_week_name" {
  default = "SATURDAY"
}

variable "cloud_exadata_infrastructure_maintenance_window_hours_of_day" {
  default = "0"
}

variable "cloud_exadata_infrastructure_maintenance_window_is_monthly_patching_enabled" {
  default = "false"
}

variable "cloud_exadata_infrastructure_maintenance_window_lead_time_in_weeks" {
  default = "4"
}

variable "cloud_exadata_infrastructure_maintenance_window_months_name" {
  default = "DECEMBER"
}

variable "cloud_exadata_infrastructure_maintenance_window_patching_mode" {
  default = "ROLLING"
}

