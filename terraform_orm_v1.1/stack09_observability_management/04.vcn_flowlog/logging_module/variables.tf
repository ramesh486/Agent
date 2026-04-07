#################################
# Common Variables
#################################

variable compartment_ocid {}
variable tenancy_ocid {}
variable "region" {}
variable "subnet_ocid" {}
variable "project_tag" {
	default = {}
}


####################################
# Subnet Logging Variables
####################################

variable "logging_display_name" {
	default = ""
}

variable "is_logging_enabled" {
	default = "true"
}

variable "log_group_ocid" {
	default = ""
}

variable "log_type" {
	default = "SERVICE"
}

variable "log_retention_duration" {
	default = "60"
}

variable "logging_configuration_source_category" {
	default = "all"
}

variable "logging_configuration_source_service" {
	default = "flowlogs"
}

variable "logging_configuration_source_type" {
	default = "OCISERVICE"
}