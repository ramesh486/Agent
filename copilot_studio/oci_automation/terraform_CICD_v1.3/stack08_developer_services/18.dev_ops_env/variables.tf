
#####################################
# Common Variables
#####################################

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
        "Automation_Tags.Automation_ResourceType" = "dev_ops_env"
        }
      freeformTags = {}
  }
}

#####################################
# Dev environment Variables
#####################################

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
  default     = "test_topic001"
  description = "Provide name for Notification Topic"
}

