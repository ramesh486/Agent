#####################
# Common Variables
#####################

variable compartment_ocid {}
variable "project_tag" {
	type = map
	default = {
		definedTags = {}
		freeformTags = {}
	}
}
variable "logging_display_name" {}
variable "is_logging_enabled" {}
variable "log_group_ocid" {}
variable "log_type" {}
variable "log_retention_duration" {}
variable "logging_configuration_source_category" {}
variable "logging_configuration_source_subnet_ocid" {}
variable "logging_configuration_source_service" {}
variable "logging_configuration_source_type" {}