variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment name to deploy the resource"
}

variable "region"{
    type         = string
    default      = ""
    description  = "region"
}

variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy_ocid"  
 	default   = ""  
}

variable "description"{
    type         = string
    default      = "Data_integration_Workspace_Example"
    description  = "Workspace description"
}
variable "display_name"{
    type         = string
    default      = "Workspace_Example"
    description  = "Workspace name"
}
variable "is_private_network_enabled"{
    type         = bool
    default      = false
    description  = "is private network enabled"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "data_integration"
        }
      freeformTags = {}
  }
}


