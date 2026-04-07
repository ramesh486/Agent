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
variable "bucket_name" {}
variable "bucket_storage_tier" {}
variable "bucket_access_type" {}
variable "bucket_versioning" {}
variable "auto_tiering" {}
variable "object_event_enabled" {}
