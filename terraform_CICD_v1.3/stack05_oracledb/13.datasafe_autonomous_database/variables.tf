#################################################
# Common Variables
#################################################

variable compartment_ocid {}

variable "region" {}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "datasafe_autonouus_db"}
      freeformTags = {}
  }
}

variable "target_database_datasafe_display_name" {
  type = string
  default = "Example_data_safe"
}

variable "target_database_datasafe_description" {
  type = string
  default = "Provide Datasafe Database Description"
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
  description = "Choose one of these - PRIVATE_ENDPOINT or ONPREM_CONNECTOR"
}

variable "datasafe_private_endpoint_ocid" {
    type = string
    default = ""
}

