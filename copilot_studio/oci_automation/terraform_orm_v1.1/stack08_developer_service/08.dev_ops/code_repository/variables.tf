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
    description = "Provide the Compartment OCID"
}

variable "repo_name" {
  type        = string
  default     = "repositoryName"
  description = "Provide the name for the Repository"
}

variable "default_branch" {
  type        = string
  default     = "defaultBranch"
  description = "The default branch of the repository"
}

variable "description" {
  type        = string
  default     = "description"
  description = "Details of the repository"
}

variable "repository_type" {
  type        = string
  default     = "HOSTED"
  description = "Type of repository"
}

variable "project_name" {
  type        = string
  default     = "project"
  description = "Provide the Project name"
}

variable "notification_topic" {
  type        = string
  default     = "test_topic_repo"
  description = "Provide name for Notification Topic"
}
