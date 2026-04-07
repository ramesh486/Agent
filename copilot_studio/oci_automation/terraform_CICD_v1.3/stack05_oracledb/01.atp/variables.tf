 ########################
 #  Common Variables 
 #######################

variable "tenancy_ocid" {
type           = string
description    =  "Target Tenancy OCID"
default        = ""
}

variable "region" {
type           = string
description    = "Region"
default        = "us-ashburn-1"
}

variable compartment_id_in_subtree {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the subnet"
}

variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy ATP "
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "atp"
        }
      freeformTags = {}
  }
}


###########################################
# Atonomous Database Configuration Variables
###########################################

variable "database_db_name" {
type        = string
description = "Provide Database Name"
default     = "automationatp"
}

variable "autonomous_database_customer_contacts_email" {
type        = string
description = "Provide Email ID"
default     = "example@gmail.com"
}

variable "database_display_name" {
type        =   string
description = "Provide Database Display Name"
default     = "automationatp"
}

variable "database_db_workload" {
type        = string
description = "Choose Database workload"
default     = "OLTP"
}

variable "database_db_version" {
type        = string
description = "Database Version"
default     = "19c"
}

variable "database_cpu_core_count" {
type        = string
description = "Choose Database CPU Core Count"
default     = "1"
}

variable "autonomous_database_is_dedicated" {
    type        = bool
    default     = false
    description = "autonomous database is dedicated"
}

variable "autonomous_container_database_ocid" {
type        = string
description = "autonomous container database ocid"
default     = ""
}

variable "autonomous_database_is_auto_scaling_enabled" {
type        = string
description = "Database Autoscaling Enabled"
default     = "true"
}

variable "database_data_storage_size_in_tbs" {
type        = string
description = "Choose Database Data Storage Size in terabytes"
default     = "1"
}

variable "autonomous_database_is_auto_scaling_for_storage_enabled" {
type        = string
description = "Database Storage Enabled"
default     = "false"
}

variable "autonomous_database_is_mtls_connection_required" {
type        = string
description = "Database mTls Connection"
default     = "true"
}

variable "database_admin_password" {
type        = string
description = "Database Admin Password"
default     = "AAAaa123##bc"
}

variable "database_license_model" {
type        = string
description = "Database Licence Model"
default     = "LICENSE_INCLUDED"
}

variable "database_operations_insights_status" {
type        = string
description = "Database Insight Status"
default     = "NOT_ENABLED"
}

variable "database_permission_level" {
type        = string
description = "Database Permission"
default     = "UNRESTRICTED"
}

variable "create_private_database" {
type        = string
description = "Choose whether to create private autonomous database"
default     = "true"   
}

variable "nsg_ocid" {
type        = list
description = "NSG"
default     = []
}

variable "subnet_display_name" {
type        = string
default     = ""
description = "The subnet in which the ATP is attached"
}

variable "autonomous_database_source" {
type        = string
description = "autonomous database source"
default     = "NONE"
}
