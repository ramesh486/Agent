variable "tenancy_ocid" {}
variable "region" {}

variable compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Block Volume"
        }
      freeformTags = {}
  }
}

### Block Volume Variables

variable "volume_display_name" {
  type        = string 
  default     = "block_storage"
  description = "Name for Block Storage"   
}
variable "volume_is_auto_tune_enabled" {
  type        = string 
  default     = "false"
  description = "Specifies whether the auto-tune performance is enabled for this volume."   
}
variable "volume_size_in_gbs" {
  type        = number
  default     = 1024
  description = "The size of the volume in GBs."   
}
variable "volume_vpus_per_gb" {
  type        = number 
  default     = 10
  description = "The number of volume performance units (VPUs) that will be applied to this volume per GB"   
}


