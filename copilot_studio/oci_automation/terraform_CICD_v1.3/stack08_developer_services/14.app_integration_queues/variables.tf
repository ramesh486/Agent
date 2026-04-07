#####################################
# Common Variable
#####################################

variable "region" {
  type        = string
  default     = "us-ashburn-1"
  description = "Enter Region"
}
variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy ocid"  
  default     = "" 
}
variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}
variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy the resource"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "app_integration_queues"
        }
      freeformTags = {}
  }
}

#####################################
# Queue Variables
#####################################

variable "tag_namespace_description" {
  type        = string
  default     = "Just a test"
  description = "Enter tag namespace description"
}

variable "tag_namespace_name" {
  type        = string
  default     = "testexamples-tag-namespace"
  description = "Enter tag namespace name"
}

variable "queue_display_name" {
  type        = string
  default     = "test_queue01"
  description = "Enter queue display name"
}

variable "queue_retention_in_seconds" {
  type        = number
  default     = 10
  description = "Queue retention in seconds"
}

variable "queue_timeout_in_seconds" {
  type        = number
  default     = 10
  description = "Enter queue timeout in seconds"
}

variable "queue_visibility_in_seconds" {
  type       = number
  default    = 10
  description= "Enter queue visibility in seconds"
}

variable "tag_description" {
  type       = string
  default    = "tf example tag"
  description= "Enter tag description"
}

variable "tag_name" {
  type       = string
  default    = "tf-example-tag"
  description= "Enter tag name"
}
