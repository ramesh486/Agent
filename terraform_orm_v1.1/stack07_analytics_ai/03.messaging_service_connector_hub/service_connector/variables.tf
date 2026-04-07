// Common Variables

variable service_connector_compartment_ocid {}

variable "service_connector_display_name" {}

variable "service_connector_description" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable "source_kind" {}

variable "logging_source_compartment_ocid"{}

variable "log_group_id" {}

variable "target_kind" {}

variable "object_storage_bucket_name" {}

variable "object_name_prefix" {}