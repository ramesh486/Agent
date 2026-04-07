variable "region" {
  type        = string
  description = "Enter Region"  
  default     = "us-ashburn-1"  
}

variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy_ocid"  
  default     = ""  
}

variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "Provide the Compartment OCID "
}

variable "deploy_environment_type" {
  type        = string
  default     = "FUNCTION"
  description = "Deployment environment type"
}

variable "function_id" {
  type        = string
  default     = ""
  description = "The OCID of the Function"
}

variable "deploy_environment_display_name" {
  type        = string
  default     = "test_deploy_environment"
  description = "Deployment environment display name."
}

variable "project_name" {
  type        = string
  default     = "demo_project"
  description = "Provide the Project name "
}


variable "notification_topic" {
  type        = string
  default     = "test_topic"
  description = "Provide name for Notification Topic"
}

