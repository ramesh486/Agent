###############
#Compute cluster
###############

variable "tenancy_ocid" {
  type        = string
  default     = ""
  description = "Select tenancy ocid"
}

variable "region" {
  type        = string
  default     = ""
  description = "Select the region"
}

variable compartment_id_in_subtree {
  type        = bool
  default     = true 
  description = "Compartment in subtree"
}

variable compartment_name {
  type        = string
  default     = ""
  description = "Compartment name to deploy the resources"
}

variable "availability_domain" {
  type        = string
  description = "Select Availability Domain"  
  default     = ""
}

variable "compute_cluster_display_name" {
  type        = string
  description = "Provide compute cluster display name"  
  default     = "compute_cluster"
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Compute_cluster"
        }
      freeformTags = {}
  }
}
