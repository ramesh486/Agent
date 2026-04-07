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

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment name to deploy the resource"
}

#####################################
#  media_workflow
#####################################

variable "ms_display_name" {
  type        = string
  default     = "test_mediaservice_config_workflow"
  description = "media service workflow configuration display name"
}

variable "media_workflow_tasks_key" {
  type        = string
  default     = "move"
  description = "media workflow task key"
}

variable "media_workflow_tasks_parameters" {
  type        = string
  default     = "{\"taskParameters\":[{\"bucketName\":\"inputBucket\",\"namespaceName\":\"namespaceName\",\"objectName\":\"$${/videos/inputObject}\",\"storageType\":\"objectStorage\",\"target\":\"video.mp4\"}]}"
  description = "media workflow tasks parameters"
}

variable "media_workflow_tasks_type" {
  type        = string
  default     = "getFiles"
  description = "media workflow tasks type"
}

variable "media_workflow_tasks_version" {
  default     = 1
  type        = string
  description = "media workflow tasks version"
}

#####################################
# media_workflow_config
##################################### 

variable "display_name" {
  type        = string
  default     = "test_workflow"
  description = "workflow display name"
}

variable "media_workflow_configuration_parameters" {
  type        = string
  default     = "{\"storage\":{\"inputbucket\":\"myinputbucket\",\"outputbucket\":\"myoutputBucket\"}}"
  description = " media workflow configuration parameters"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "media_services"
        }
      freeformTags = {}
  }
}