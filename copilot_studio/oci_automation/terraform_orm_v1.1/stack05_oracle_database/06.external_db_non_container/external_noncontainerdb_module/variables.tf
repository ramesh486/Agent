variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
variable "external_non_container_database_display_name" {}

variable "connector_credential_type" {}

variable "connector_credential_name" {}

variable "connection_string_hostname" {}

variable "connection_string_port" {}

variable "connection_string_protocol" {}

variable "connection_string_service" {}

variable "connector_agent_id" {}

variable "external_database_connector_display_name" {}

variable "connector_type" {}

variable "db_management_license_model" {}

variable "enable_management" {}