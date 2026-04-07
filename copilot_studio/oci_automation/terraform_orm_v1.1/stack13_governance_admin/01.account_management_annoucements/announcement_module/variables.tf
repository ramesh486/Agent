variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}


variable "notification_topic_name" {
  default = ""
}

variable "notification_topic_description" {
  default = ""
}

variable "notification_topic_state" {
  default = ""
}

variable "subscription_name" {
  default = ""
}

variable "subscription_endpoint" {
  default = ""
}

variable "subscription_protocol" {
  default = ""
}

variable "announcement_subscription_description" {
  default = ""
}

variable "announcement_subscription_display_name" {
  default = ""
}

variable "announcement_subscription_filter_groups_filters_type" {
  default = ""
}

variable "announcement_subscription_filter_groups_filters_value" {
  default = ""
}

variable "announcement_subscription_id" {
  default = ""
}

variable "announcement_subscription_state" {
  default = ""
}