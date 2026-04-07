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

variable "parameter_name" {
  type        = string
  default     = "Build_pipeline_param"
  description = "Provide the name for the Build Pipeline"
}

variable "default_value" {
  type        = string
  default     = "defaultValue"
  description = "The default value of the Buildpipeline"
}

variable "description" {
  type        = string
  default     = "description"
  description = "Details of the build Pipeline"
}

variable "display_name" {
  type        = string
  default     = "test_buildpipeline"
  description = "Build pipeline display name."
}

variable "project_name" {
  type        = string
  default     = "build_project"
  description = "Provide the Project name "
}

variable "notification_topic" {
  type        = string
  default     = "test_topic"
  description = "Provide name for Notification Topic"
}

