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
  default = ""
}

variable "target_database_details_infrastructure_type" {
  default = ""
}

variable "autonomous_database_ocid" {
    type = string
    default = ""
}


variable "database_db_system_ocid" {
    type = string
    default = ""
}

variable "instance_ocid" {
    type = string
    default = ""
}

variable "target_database_database_details_ip_addresses" {
    type = string
    default = ""
}

variable "target_database_database_details_listener_port" {
    type = number
    default = 1521
}

variable "database_service_name" {
    type = string
    default = ""
}

variable "database_vm_cluster_ocid" {
    type = string
    default = ""
}

#################################################
# DataSafe connection_option Variables
#################################################

variable "target_database_connection_option_connection_type" {
  default = "PRIVATE_ENDPOINT"
  description = "Choose one of these - PRIVATE_ENDPOINT or ONPREM_CONNECTOR"
}

variable "datasafe_private_endpoint_ocid" {
    type = string
    default = ""
}

variable "data_safe_on_prem_connector_ocid" {
  type = string
  default = ""
}

variable "target_database_user_name" {
  type = string
  default = ""
}

variable "target_database_password" {
  type = string
  default = ""
}
