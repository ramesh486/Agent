variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
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
variable "subnet_ocid" {}

