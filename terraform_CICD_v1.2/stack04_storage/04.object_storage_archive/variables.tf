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
        "Automation_Tags.Automation_ResourceType" = "Object Storage"
        }
      freeformTags = {}
  }
}
	
#######################################################
    #  Object Storage Bucket variables  #
#######################################################

variable "bucket_name" {
  type        = string  
  default     = "bucket_test"
  description = "The name of the bucket"
}
variable "bucket_storage_tier" {
  type        = string  
  default     = "Standard"
  description = "The type of storage tier of this bucket."  
}
variable "bucket_access_type" {
  type        = string    
  default     = "NoPublicAccess" 
  description = "The type of public access enabled on this bucket. "  
}
variable "bucket_versioning" {
  type        = string    
  default     = "Disabled"
  description = "Set the versioning status on the bucket."  
}
variable "auto_tiering" {
  type        = string    
  default     = "InfrequentAccess"
  description = "Set the auto tiering status on the bucket."  
}
variable "object_event_enabled" {
  type        = string    
  default     = "false"
  description = "Whether or not events are emitted for object state changes in this bucket."  
}



