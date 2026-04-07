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

#################################################
# DataSafe Private Endpoint Variables
#################################################

variable "data_safe_private_endpoint_display_name" {
    default = ""
}

variable "data_safe_private_endpoint_description" {
    default = ""
}

variable "subnet_ocid" {
    default = ""
}

variable "vcn_ocid" {
    default = ""
}

variable "data_safe_private_endpoint_nsg_ocids" {
    type = list
    default = []
}