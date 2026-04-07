variable "tenancy_ocid" {
  default     = ""
  type        =  string
  description = "Enter tenancy ocid"
}
variable "compartment_ocid" {
  default     = ""
  type        =  string
  description = "Enter compartment ocid"
}
variable "region" {
  default     = ""
  type        =  string
  description = "Enter Region"
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
  default     = ""
  type        =  string
  description = "subscription_endpoint"
}

variable "subscription_protocol" {
  default     = "EMAIL"
  type        =  string
  description = "subscription_protocol"
}
