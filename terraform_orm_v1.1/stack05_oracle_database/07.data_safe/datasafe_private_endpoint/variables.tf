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
# DataSafe Private Endpoint Variables
#################################################

variable "data_safe_private_endpoint_display_name" {}

variable "data_safe_private_endpoint_description" {}

variable "subnet_ocid" {}

variable "vcn_ocid" {}

variable "nsg_ocids" {
  type = list
  default = []
}