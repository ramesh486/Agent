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

variable "target_database_datasafe_display_name" {
  type = string
  default = ""
}

variable "target_database_datasafe_description" {
  type = string
  default = ""
}


#################################################
# DataSafe database_details Variables
#################################################

variable "target_database_details_database_type" {
  default = "AUTONOMOUS_DATABASE"
}

variable "target_database_details_infrastructure_type" {
  default = "ORACLE_CLOUD"
}

variable "autonomous_database_ocid" {
    type = string
    default = ""
}

#################################################
# DataSafe connection_option Variables
#################################################

variable "target_database_connection_option_connection_type" {
  default = "PRIVATE_ENDPOINT"
}

variable "datasafe_private_endpoint_ocid" {
    type = string
    default = ""
}

