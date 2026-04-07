variable "region" {}
variable "admin_password" {}
variable "autonomous_maintenance_schedule_type" {}
variable "character_set" {}
variable "compartment_ocid" {}
variable "cpu_core_count" {}
variable "email" {}
variable "data_storage_size_in_tbs" {}
variable "db_name" {}
variable "db_version" {}
variable "db_workload" {}
variable "display_name" {}
variable "is_auto_scaling_enabled" {}
variable "is_auto_scaling_for_storage_enabled" {}
variable "is_dedicated" {}
variable "is_preview_version_with_service_terms_accepted" {}
variable "license_model" {}
variable "ncharacter_set" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
