variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable "autonomous_database_is_dedicated" {}

variable "autonomous_container_database_ocid" {}

variable "database_db_name" {}

variable "autonomous_database_customer_contacts_email" {}

variable "autonomous_database_is_mtls_connection_required" {}

variable "database_display_name" {}
variable "database_db_workload" {}
variable "database_db_version" {}
variable "database_cpu_core_count" {}
variable "autonomous_database_is_auto_scaling_enabled" {}
variable "database_data_storage_size_in_tbs" {}
variable "autonomous_database_is_auto_scaling_for_storage_enabled" {}
variable "database_admin_password" {}
variable "database_license_model" {}
variable "database_operations_insights_status" {}
variable "database_permission_level" {}
variable "nsg_ocid" {}
variable "subnet_ocid" {}
variable "create_private_database" {}
variable "autonomous_database_source" {}