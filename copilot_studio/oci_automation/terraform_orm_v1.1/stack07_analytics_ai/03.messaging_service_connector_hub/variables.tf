// Common Variables
variable "tenancy_ocid" {}
variable "region" {}
variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {}
    }
}

// Service Connector Source Variables

variable "service_connector_compartment_ocid" {}

variable "service_connector_display_name" {
  type        = string
  default     = "Service Connector"
  description = "Give name for Service Connector"
}
variable "service_connector_description" {
  type        = string
  default     = "This is Service connector"
  description = "Srvice connector hub description"
}
variable "source_kind" {
  type        = string
  default     = "logging"
  description = "Source type"
}
variable "logging_source_compartment_ocid" {}
variable "log_group_id"{}


// Service Connector Policy Variables

variable "service_connector_policy_display_name" {
  type        = string
  default     = "Service_connector_Policy"
  description = "This is the Service connector Policy "
}

variable "service_connector_policy_description" {
  type        = string
  default     = "This policy allows service connector to push logs Object Storage"
}
variable "policy_statements" {
  type        = list
  default     = ["Allow group 'Administrators' to manage serviceconnectors in compartment gen_compartment"]
}

// Service Connector Target Variables

variable "target_kind" {
  type        = string
  default     = "objectStorage"
  description = "Target type"
}

variable "object_storage_bucket_name" {
  type        = string
  default     = ""
  description = "The name of the bucket"
}

variable "object_name_prefix" {
  type        = string
  default     = ""
  description = "The prefix of the objects"
}