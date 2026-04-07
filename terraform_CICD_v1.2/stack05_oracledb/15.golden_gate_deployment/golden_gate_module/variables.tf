###########################################
# Common Variables
###########################################

variable "compartment_ocid" {
    default = "ocid1.compartment.oc1..aaaaaaaa64m4sfarjafftzq5gldscdh2btkzp7rfzjsr5ghe5tkgdx6lrlpq"
}

variable "project_tag" {
    type = map
    default = {
        definedTags = {}
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
  default = "gg"
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

variable "subnet_ocid" {
  default = "ocid1.subnet.oc1.us-sanjose-1.aaaaaaaaqjzzxhgb2jcnbbr7uv42mhxq4msppubode3etsvyvs2n5zrdvyca"
}

variable "golden_gate_deployment_backup_ocid" {
  default = ""
}

variable "deployment_description" {
  default = ""
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