variable "region" {
  type        = string
  default     = "us-ashburn-1"
  description ="Enter Region"
}
variable "compartment_ocid" {
  type        = string
  default     = "Just a test"
  description = "Choose the Compartment where to deploy the resources"
}

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
