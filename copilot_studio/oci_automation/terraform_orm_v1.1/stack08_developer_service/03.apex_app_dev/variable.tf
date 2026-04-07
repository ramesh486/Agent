variable "region" {
  type        = string
  description = "Enter Region"  
  default     = "us-ashburn-1"  
}

variable "admin_password" {
  type        = string
  description = "Provide admin password"  
  default     = ""  
}

variable "autonomous_maintenance_schedule_type" {
  type        = string
  description = "Provide autonomous maintenance schedule type"  
  default     = "REGULAR"  
}

variable "character_set" {
  type        = string
  description = "Provide character set"  
  default     = "AL32UTF8"  
}

variable "compartment_ocid" {
  type        = string
  description = "Provide compartment ocid"  
  default     = ""  
}

variable "cpu_core_count" {
  type        = number
  description = "Provide cpu core count"  
  default     = "1"  
}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable "email" {
  type        = string
  description = "Provide email"  
  default     = ""  
}

variable "data_storage_size_in_tbs" {
  type        = number
  description = "Provide data storage size in tbs"  
  default     = "1"  
}

variable "db_name" {
  type        = string
  description = "Provide db name"  
  default     = "LY89LWLS4ZSTOV9Z"  
}

variable "db_version" {
  type        = string
  description = "Provide db version"  
  default     = "19c"  
}

variable "db_workload" {
  type        = string
  description = "Provide db workload"  
  default     = "APEX"  
}

variable "display_name" {
  type        = string
  description = "Provide display name"  
  default     = "LY89LWLS4ZSTOV9Z"  
}

variable "is_auto_scaling_enabled" {
  type        = bool
  description = "Select is auto scaling enabled"  
  default     = "true"  
}

variable "is_auto_scaling_for_storage_enabled" {
  type        = bool
  description = "Select is auto scaling for storage enabled"  
  default     = "false"  
}

variable "is_dedicated" {
  type        = bool
  description = "Select is dedicated"  
  default     = "false"  
}

variable "is_preview_version_with_service_terms_accepted" {
  type        = bool
  description = "Select is preview version with service terms accepted"  
  default     = "false"  
}

variable "license_model" {
  type        = string
  description = "Provide license model"  
  default     = "LICENSE_INCLUDED"  
}

variable "ncharacter_set" {
  type        = string
  description = "Provide ncharacter set"  
  default     = "AL16UTF16"  
}
