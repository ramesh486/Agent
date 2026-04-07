###########################################
# Common Variables
###########################################

variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}
variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "Compartment ocid"
}

variable "subnet_ocid" {
  type        = string
  default     = ""
  description = "The subnet ocid"
}
# variable "db_compartment_id_in_subtree" {
#     type        = bool
#     default     = true
#     description = "Compartment ID in Subtree"
# }

# variable "db_compartment_name" {
#     type        = string
#     default     = ""
#     description = "Compartment Name to deploy"
# }
# variable "network_compartment_id_in_subtree" {
#     type        = bool
#     default     = true
#     description = "Compartment ID in Subtree"
# }

# variable "network_compartment_name" {
#     type        = string
#     default     = ""
#     description = "Compartment Name of the Subnet"
# }

# variable "subnet_display_name" {
#   type        = string
#   default     = ""
#   description = "The subnet in which the application is deployed"
# }

variable "region" {
    default = "us-ashburn-1"
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter"   = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Goldengate_deployment"
        }
      freeformTags = {}
  }
}

###########################################
# GoldenGate Deployment Variables
###########################################

variable "deployment_cpu_core_count" {
  default = "1"
}

variable "deployment_deployment_type" {
  default = "DATABASE_ORACLE"
  description = "Allowed values are: OGG, DATABASE_ORACLE, BIGDATA, DATABASE_MICROSOFT_SQLSERVER, DATABASE_MYSQL, DATABASE_POSTGRESQL"
}

variable "deployment_display_name" {
  default = "gg-console-access"
}

variable "deployment_is_auto_scaling_enabled" {
  type = bool
  default = false
  description = "Indicates if auto scaling is enabled for the Deployment's CPU core count."
}

variable "deployment_license_model" {
  default = "BRING_YOUR_OWN_LICENSE"
  description = "Allowed values are: LICENSE_INCLUDED, BRING_YOUR_OWN_LICENSE"
}



variable "deployment_description" {
  default = "deployment_description"
}

variable "deployment_fqdn" {
  default = ""
  description = "A three-label Fully Qualified Domain Name (FQDN) for a resource."
}

variable "deployment_is_public" {
    type = bool
    default = true
}

variable "deployment_maintenance_window_day" {
  default = ""
  description = "Days of the week, Allowed values are: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY"
}

variable "deployment_maintenance_window_start_hour" {
    type = number
    default = 0
    description = "Start hour for maintenance period. Hour is in UTC - Minimum: 0, Maximum: 23"
}

variable "deployment_nsg_ocids" {
  type = list
  default = []
}

variable "deployment_ogg_data_admin_password" {
  default = "WElcome_#123"
}

variable "deployment_ogg_data_admin_username" {
  default = "oggadmin"
}


variable "golden_gate_deployment_instance_name" {
  default = "ggsinstance"
}

variable "deployment_ogg_data_certificate" {
  default = ""
}

variable "deployment_ogg_data_key" {
  default = ""
}