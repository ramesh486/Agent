
variable "tenancy_ocid" {
  type        = string
  description = "Choose the tenancy ocid"  
	default     = ""
}

variable "region" {
  type        = string
  description = "Enter Region"  
 	default     = "us-ashburn-1" 
}


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
        "Automation_Tags.Automation_ResourceType" = "Dedicated_VM"
        }
      freeformTags = {}
  }
}

######## Dedicate vm host ####################

variable "dedicated_vm_host_shape" {
  type        = string
  description = "dedicated vm host shape"  
	default     = "DVH.Standard2.52"
}

variable "display_name" {
  type        = string
  description = "display name"  
	default     = "TestDedicatedVmHost"
}

