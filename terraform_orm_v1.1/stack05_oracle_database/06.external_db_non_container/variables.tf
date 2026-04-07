variable "tenancy_ocid" {
}

variable "region" {
}

variable "compartment_ocid" {
}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable "external_non_container_database_display_name" {
  type        = string
  default     = "myTestExternalNonContainerDatabase"
  description = "Name for the external database"
}

variable "connector_credential_type" {
  type        = string
  default     = "NAME_REFERENCE"
  description = "The type of credential used to connect to the database"  
}

variable "connector_credential_name" {
  type        = string
  default     = "test.connector"
  description = "The name of the credential information that used to connect to the database"  
}

variable "connection_string_hostname" {
  type        = string
  default     = "hostname"
  description = "The host name of the database"    
}

variable "connection_string_port" {
  type        = number
  default     = 10
  description = "The port used to connect to the database"
}

variable "connection_string_protocol" {
  type        = string
  default     = "TCP"
  description = "The protocol used to connect to the database."
}

variable "connection_string_service" {
  type        = string
  default     = "myService"
  description = "The name of the service alias used to connect to the database."
}

variable "connector_agent_id" {
  type        = string
  default     = ""
  description = "The ID of the agent used for the external database connector."
}

variable "external_database_connector_display_name" {
  type        = string
  default     = "myTestConnector"
  description = "Name for the external database connector"
}

variable "connector_type" {
  type        = string
  default     = "MACS"
  description = "The type of connector used by the external database resource."
}

variable "db_management_license_model" {
  type        = string
  default     = "BRING_YOUR_OWN_LICENSE"
  description = " The Oracle license model that applies to the external database."
}

variable "enable_management" {
  type        = bool
  default     = true
  description = " Is management enabled?"
}
