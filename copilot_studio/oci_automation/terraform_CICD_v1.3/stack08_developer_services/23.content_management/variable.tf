#####################################
# Common Variables
#####################################

variable "region" {
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
}
variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name"
 }

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}
variable "tenancy_ocid" {
    type        = string
    default     = ""
    description = "The OCID of the tenancy."
}
variable "tenancy_name" {
    type        = string
    default     = "ebizoncloudllc"
    description = "The name of the tenancy."
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "content_management"
        }
      freeformTags = {}
  }
}
#####################################
# Oce instance variables 
#####################################

variable "oce_instance_admin_email" {
    type        = string
    default     = "example@gmail.com"
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
