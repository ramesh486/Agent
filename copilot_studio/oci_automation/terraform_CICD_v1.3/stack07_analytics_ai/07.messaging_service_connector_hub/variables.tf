#####################################
# Common Variables
#####################################

variable "tenancy_ocid" {
  default     = "" 
  type        = string
  description = "Tenancy OCID"
}

variable "region" {
    type         = string
    default      = ""
    description  = "The region where the BDS instance will be deployed."
}

variable "service_connector_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "service_connector_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "logging_source_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable "logging_source_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

################################################
##OCI Service Connector Hub Configuration
################################################

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

##################################################
# Service Connector Source Variables
##################################################

variable "source_kind" {
  type        = string
  default     = "logging"
  description = "Source type"
}

variable "log_group_id"{
  type        = string
  default     = "_Audit"
  description = "log group id"
}

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
  default     = ["Allow group 'Administrators' to manage serviceconnectors in compartment oci_nonprod_app"]
}

#####################################
# Service Connector Target Variables
#####################################

variable "target_kind" {
  type        = string
  default     = "objectStorage"
  description = "Target type"
}

variable "object_storage_bucket_name" {
  type        = string
  default     = "bucket"
  description = "The name of the bucket"
}

variable "object_name_prefix" {
  type        = string
  default     = "prefix"
  description = "The prefix of the objects"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "service_connector_hub"
        }
      freeformTags = {}
  }
}
