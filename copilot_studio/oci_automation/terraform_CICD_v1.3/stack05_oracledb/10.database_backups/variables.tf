variable "tenancy_ocid" {}
variable "region" {}
variable "database_ocid" {
  type = string
  default = ""
}
variable "backup_display_name" {
    type = string
    default = "Example_backup"
}

