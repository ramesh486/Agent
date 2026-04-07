
variable "region" {
  type          = string
  description   = "Enter Region"  
 	default     = "us-ashburn-1"  
}
variable "tenancy_ocid" {
  type          = string
  description   = "Enter tenancy_ocid"  
 	default     = ""  
}
variable compartment_id_in_subtree {
    type        = bool
    default     = true 
    description = "Compartment in subtree"
}

variable compartment_name {
  type         = string
  default      = ""
  description  = "Compartment name to deploy the resources"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Os_management"
        }
      freeformTags = {}
  }
}

############ os management instance group ################

variable "managed_instance_group_display_name" {
  description = "The display name for the managed instance group."
  type        = string
  default     = "TF-managed-instance-group"
}

variable "managed_instance_group_description" {
  description = "The description of the managed instance group."
  type        = string
  default     = "Description of the managed instance"
}


############ osmanagement software source ################

variable "software_source_arch_type" {
  description = "The architecture type of the software source."
  type        = string
  default     = "X86_64"  
}

variable "software_source_display_name" {
  description = "The display name for the software source."
  type        = string
  default     = "Example_software_source"  
}
