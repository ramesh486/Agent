## Common Variables

variable "tenancy_ocid" {}
variable "region" {}

### Streaming Variables

variable "stream_pool_name" {
  type        = string
  default     = "test_stream_pool"
  description = "The name of the stream pool."
}
variable "auto_create_topics_enable" {
  type        = bool
  default     = true
  description = "Enable auto creation of topic on the server."
}
variable "stream_pool_log_retention_hours" {
  type        = number
  default     = 24
  description = "The number of hours to keep a log file before deleting it (in hours)" 
}
variable "stream_pool_num_of_partitions" {
  type        = number
  default     = 1
  description = "The default number of log partitions per topic."
}
variable "stream_display_name" {
  type        = string
  default     = "test_stream"
  description = "The name of the stream."
}
variable "stream_retention_in_hours" {
  type        = number
  default     = 24
  description = "The retention period of the stream, in hours."
}
variable "stream_partitions" {
  type        = number
  default     = 1
  description = "The number of partitions in the stream."
}

variable "monitor_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "monitor_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}


variable "network_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable "subnet_display_name" {
  type = string
  default = ""
  description = "The subnet in which the application is deployed"
}

# variable "nsg_ocid" {
#   type = list
#   default = []
# }

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "message_streaming"
        }
      freeformTags = {}
  }
}