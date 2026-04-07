variable "tenancy_ocid" {
  default     = ""
  type        =  string
  description = "Enter tenancy ocid"
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

variable "region" {
  type        =  string
  description = "Enter Region"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "app_integration_notifications"
        }
      freeformTags = {}
  }
}

variable "notification_topic_name" {
  default     = "topicname"
  type        =  string
  description = "Choose a name for notification topic"
}

variable "notification_topic_description" {
  default     = "Notification_Topic"
  type        =  string
  description = "notification_topic_description"
}

variable "subscription_name" {
  default     = "tenancy_subscription"
  type        =  string
  description = "subscription_name"
}

variable "subscription_endpoint" {
  default     = "reemayg99@gmailcom"
  type        =  string
  description = "subscription_endpoint"
}

variable "subscription_protocol" {
  default     = "EMAIL"
  type        =  string
  description = "subscription_protocol"
}
