variable "region" {
  type = string
  description = "Enter the Region"
  default = "us-ashburn-1"
}

variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Account_management"
        }
      freeformTags = {}
  }
}


variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "notification_topic_name" {
  type        = string
  default     = "My_topic"
  description = "Choose a name for notification topic"
}

variable "topic_ocid" {
  type        = string
  default     = ""
  description = "The ocid of the topic"
}

variable "subscription_endpoint" {
  type        = string
  default     = "example@gmail.com"
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


