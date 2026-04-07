 # Common Variables

variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}
variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {}
    }
}


###########################################
# Autonomous Database Configuration Variables
###########################################

variable "database_db_name" {
default = ""
}

variable "autonomous_database_customer_contacts_email" {}

variable "database_display_name" {
default = ""
}
variable "database_db_workload" {
default = "OLTP"
}
variable "database_db_version" {
default ="19c"
}
variable "database_cpu_core_count" {
default = "1"
}

variable "autonomous_database_is_dedicated" {}

variable "autonomous_container_database_ocid" {
    type = string
    default = ""
}


variable "autonomous_database_is_auto_scaling_enabled" {
default = "true"
}
variable "database_data_storage_size_in_tbs" {
default = "1"
}
variable "autonomous_database_is_auto_scaling_for_storage_enabled" {
default = "false"
}

variable "autonomous_database_is_mtls_connection_required" {}

variable "database_admin_password" {
default = ""
}
variable "database_license_model" {
default = "BYOL"
}
variable "database_operations_insights_status" {
default = "NOT_ENABLED"
}
variable "database_permission_level" {
default = "UNRESTRICTED"
}

variable "create_private_database" {}

variable "nsg_ocid" {
    type = list
    default = []
}
variable "subnet_ocid" {
    type = string
    default = ""
}

variable "autonomous_database_source" {
    default = "NONE"
}
