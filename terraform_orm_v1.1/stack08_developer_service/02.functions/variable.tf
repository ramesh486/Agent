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


variable "display_name" {
  description = "The display name of an entity or resource."
  type        = string
  default     = "Example_application"
}


