variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}


variable "notification_topic_name" {
  type        = string
  default     = "oci_announcementtopic"
  description = "Choose a name for notification topic"
}

variable "notification_topic_description" {
  type        = string
  default     = "Announcement Notification Topic"
  description = "Choose notification topic description"
}

variable "notification_topic_state" {
   type        = string
  default     = "ACTIVE"
  description = "Choose State for Notification topic"
}

variable "subscription_name" {
  type        = string
  default     = "oci_subscription"
  description = "Choose subscription name"
}

variable "subscription_endpoint" {
  type        = string
  default     = ""
  description = "Choose email id"
}

variable "subscription_protocol" {
  type        = string
  default     = "EMAIL"
  description = "Choose Subscription protocol"
}

variable "announcement_subscription_description" {
   type        = string
  default     = "Announcement subscription services"
  description = "Choose description for announcement subscription"
}

variable "announcement_subscription_display_name" {
   type        = string
  default     = "oci_announcement_subscription"
  description = "Choose announcement subscription name"
}

variable "announcement_subscription_filter_groups_filters_type" {
   type        = string
  default     = "PLATFORM_TYPE"
  description = "Choose announcement subscription filter groups filters type"
}

variable "announcement_subscription_filter_groups_filters_value" {
   type        = string
  default     = "IAAS"
  description = "Choose announcement subscription filter groups filters value as per the filter type"
}

variable "announcement_subscription_id" {
   type        = string
  default     = "id"
  description = "announcement_subscription_id"
}

variable "announcement_subscription_state" {
   type        = string
  default     = "ACTIVE"
  description = "Choose Announcement subscription state"
}

