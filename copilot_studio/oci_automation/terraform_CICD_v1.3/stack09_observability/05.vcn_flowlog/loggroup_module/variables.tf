#################################################
# Common Variables
#################################################

variable compartment_ocid {}
variable "project_tag" {
	type = map
	default = {
		definedTags = {}
		freeformTags = {}
	}
}
variable "log_group_display_name" {}
variable "log_group_description" {}