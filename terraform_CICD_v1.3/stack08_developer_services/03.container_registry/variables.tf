################################
## Common Variables
################################

variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}
variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy the resource"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Container_registry"
        }
      freeformTags = {}
  }
}


##########################################
## Container Repository Variables
##########################################

variable "container_repository_display_name" {
    type        = string
    default     ="repo"
    description = "The display name for the container repository."
}

variable "container_repository_description" {
    type        = string
    default     = "Container Repository"
    description = "The description of the container repository."
}

variable "container_repository_is_public" {
    type        = bool
    default     = false
    description = "Set to true if the container repository should be public, or false if it should be private."
}

variable "container_repository_readme_content" {
    type        = string
    default     = "Container repository"
    description = "The content of the readme file for the container repository."
}

variable "container_repository_readme_format" {
    type        = string
    default     = "TEXT_PLAIN"
    description = "The format of the readme content. Accepted values are: TEXT_PLAIN, TEXT_MARKDOWN"
}
