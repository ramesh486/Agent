variable "tenancy_ocid" {}
variable "region" {}

variable app_compartment_id_in_subtree {
  type        = bool
  default     = true 
  description = "Compartment in subtree"
}

variable app_compartment_name {
  type        = string
  default     = ""
  description = "Compartment name to deploy the resources"
}

variable network_compartment_id_in_subtree {
  type        = bool
  default     = true 
  description = "Compartment in subtree"
}

variable network_compartment_name {
  type        = string
  default     = ""
  description = "Compartment name to deploy the resources"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "File Storage"
        }
      freeformTags = {}
  }
}

### File Storage Variables

variable "file_system_display_name" {
  type        = string 
  default     = "test_file_system"
  description = "Name for File system"   
}

variable "mount_target_display_name" {
  type        = string 
  default     = "test_mount_target"
  description = "Name for Mount target"   
}

variable "export_path" {
  type        = string 
  default     = "/file_storage_file_system"
  description = "Path used to access the associated file system."   
}

variable "export_set_name" {
  type        = string 
  default     = "test_export_set"
  description = "Name for Export Set"   
}

variable subnet_display_name{
  type        = string
  default     = ""
  description = "Name of the Subnet"
}


