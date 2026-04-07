#################################################
# Common Variables
#################################################

variable compartment_ocid {}

variable "region" {}

variable "project_tag" {
	type = map
	default = {
		definedTags = {}
		freeformTags = {}
	}
}

#################################################
# DNS TSIG Variables
#################################################

variable "tsig_key_algorithm" {}
variable "tsig_key_name" {}
variable "tsig_key_secret" {}