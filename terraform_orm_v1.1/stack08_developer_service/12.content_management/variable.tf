variable "region" {
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
}
variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "The OCID of the compartment where the resources will be provisioned."
}
variable "tenancy_ocid" {
    type        = string
    default     = ""
    description = "The OCID of the tenancy."
}
variable "tenancy_name" {
    type        = string
    default     = ""
    description = "The name of the tenancy."
}

variable "oce_instance_admin_email" {
    type        = string
    default     = ""
    description = "The email address of the OCE instance administrator."
}

variable "oce_instance_idcs_access_token" {
    type        = string
    default     = ""
    description = "The IDCS access token for the OCE instance."
}
variable "oce_instance_name" {
    type        = string
    default     = "Example_oce_instance"
    description = "The name of the OCE instance."
}
variable "oce_instance_object_storage_namespace" {
    type        = string
    default     = "" 
    description = "The object storage namespace for the OCE instance."
}
variable "oce_instance_instance_access_type" {
    type        = string
    default     = "PUBLIC"
    description = "The access type for the OCE instance."
}
variable "oce_instance_instance_license_type"{
    type        = string
    default     = "STARTER"
    description = "The license type for the OCE instance."
}
