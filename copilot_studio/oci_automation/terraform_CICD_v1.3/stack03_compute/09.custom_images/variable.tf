######################
### Common Compartment 
######################

variable "tenancy_ocid" {
  type        = string
  default     = ""
  description = "select tenancy ocid"
}

variable "region" {
  type        = string
  default     = "us-ashburn-1"
  description = "select region"
}

variable "app_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Custome_image"
        }
      freeformTags = {}
  }
}

##########################
### Custom image variables
##########################

variable "launch_mode" {
  type        = string
  default     = "NATIVE"
  description = "select launch mode"
}

variable "image_timeout_create" {
  type        = string
  default     = "30m"
  description = "select image timeout create"
}

variable "instances_display_name" {
  type        = string
  default     = ""
  description = "select instance"
}
