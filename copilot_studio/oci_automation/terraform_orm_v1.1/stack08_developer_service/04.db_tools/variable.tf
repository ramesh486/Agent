variable "compartment_ocid" {
  type          = string
  description   = "The OCID (Oracle Cloud Identifier) of the compartment"
  default       = ""
}
variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}
variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}
variable "compartment_name" {
    type        = string
    default     = "network"
    description = "Compartment Name to deploy the resource"
}

variable "subnet_display_name" {
  type          = string
  default       = "example_subnet"
  description   = "The subnet in which the application is deployed"
}

################ Database Tool Connection #######################

variable "database_tools_connection_display_name" {
  type         = string
  description  = "The display name for the database tools connection."
  default      = "My Connection MySQL"
}

variable "database_tools_connection_type" {
  type         = string
  description  = "The type of database tools connection."
  default      = "MYSQL"
}

variable "database_tools_connection_connection_string" {
  type         = string
  description  = "The connection string for the database tools connection."
  default      = "mysql://example.com:3306/db"
}

variable "database_tools_connection_key_stores_key_store_content_value_type" {
  type         = string
  description  = "The value type for the key store content of the database tools connection."
  default      = "SECRETID"
}

variable "database_tools_connection_key_stores_key_store_password_value_type" {
  type         = string
  description  = "The value type for the key store password of the database tools connection."
  default      = "SECRETID"
}

variable "database_tools_connection_key_stores_key_store_type" {
  type         = string
  description  = "The type of key store for the database tools connection."
  default      = "CA_CERTIFICATE_PEM"
}

variable "database_tools_connection_related_resource_entity_type" {
  type         = string
  description  = "The entity type of the related resource for the database tools connection."
  default      = "MYSQLDBSYSTEM"
}

variable "database_tools_connection_related_resource_identifier" {
  type         = string
  description  = "The identifier of the related resource for the database tools connection."
  default      = ""
}

variable "database_tools_connection_user_password_value_type" {
  type         =  string
  description  = "The value type for the user password of the database tools connection."
  default      = "SECRETID"
}

variable "user_name" {
  type         = string
  description  = "The name of the user"
  default      = ""
}
variable "secret_ocid" {
  type         = string
  description  = "secret OCID"
  default      = ""
}


############### Private Endpoint ##################

variable "database_tools_private_endpoint_display_name" {
  type         = string
  description  = "Name of  Private Endpoint"
  default      = "Test_private_Endpoint"
}

