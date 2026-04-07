variable "tenancy_ocid" {}

variable "compartment_ocid" {}

variable "region" {}

variable "notification_topic_name" {}

variable "notification_topic_description" {}

variable "subscription_name" {}

variable "subscription_endpoint" {}

variable "subscription_protocol" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
