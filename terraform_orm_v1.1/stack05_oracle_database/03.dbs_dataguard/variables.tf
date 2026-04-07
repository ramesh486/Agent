variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "region" {}
variable "ssh_public_key" {}
variable "primary_dbs_display_name" {
  default = ""
}
variable "primary_dbs_hostname" {
  default = ""
}
variable "secondary_dbs_display_name" {
  default = ""
}
variable "secondary_dbs_hostname" {
  default = ""
}
variable "dbs_db_name" {
  default = ""
}

variable "primary_dbs_availability_domain" {}

variable "admin_password" {}
variable "primary_dbs_subnet_ocid" {}
variable "secondary_dbs_subnet_ocid" {
  default = ""
}


variable "secondary_dbs_availability_domain" {}

variable "is_dataguard_enabled" {
  type = string
  default = ""
}
variable "dbs_node_count" {
  default = "1"
}
variable "db_version" {
  default = "19.11.0.0"
}
variable "db_workload" {
  default = "OLTP"
}
variable "database_edition" {
  default = "ENTERPRISE_EDITION_EXTREME_PERFORMANCE"
}
variable "data_storage_size_in_gb" {
  default = "1024"
}
variable "database_instance_shape" {
  default = "VM.Standard2.1"
}
variable "license_model" {
  default = "LICENSE_INCLUDED"
  description = "License model (LICENSE_INCLUDED || BRING_YOUR_OWN_LICENSE)"
}

variable "time_zone" {
  default = "UTC"
}

variable "auto_backup_enabled" {
  default = false
}
variable "project_tag" {
  type=map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
