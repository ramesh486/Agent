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

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "dev_ops_build_pipeline"
        }
      freeformTags = {}
  }
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

