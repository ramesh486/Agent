###############################
# Common Variables
###############################

variable compartment_ocid {}
variable tenancy_ocid {}
variable "region" {}

variable "project_tag" {
	default = {}
}


#################################
# LogGroup Common Variables
#################################

variable "log_group_display_name" {
    default = ""
}

variable "log_group_description" {
    default = ""
}

variable "log_type" {
	default = "SERVICE"
}

variable "logging_configuration_source_service" {
	default = "flowlogs"
}

variable "logging_configuration_source_type" {
	default = "OCISERVICE"
}

variable "logging_configuration_source_category" {
	default = "all"
}


###############################
## Subnet Logging Variables
###############################

###############################
## hub_fw_log
###############################


variable "hub_fw_log_logging_display_name" {
	default = ""
}

variable "hub_fw_log_is_logging_enabled" {
	default = "true"
}

variable "hub_fw_log_retention_duration" {
	default = "60"
}

variable "hub_fw_log_subnet_ocid" {
	default = ""
}




