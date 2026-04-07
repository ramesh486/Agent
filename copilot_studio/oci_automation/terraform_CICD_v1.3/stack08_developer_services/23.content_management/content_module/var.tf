variable "oce_instance_admin_email" {}
variable "compartment_ocid" {}
variable "oce_instance_idcs_access_token" {}
variable "oce_instance_name" {}
variable "oce_instance_object_storage_namespace" {}
variable "oce_instance_instance_access_type" {}
variable "oce_instance_instance_license_type"{}
variable "tenancy_ocid" {}
variable "tenancy_name" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

