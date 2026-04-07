####################
# Common Variables
####################

variable "tenancy_ocid" {
  default     = "" 
  type        = string
  description = "Tenancy OCID"
}

variable region { 
  default     = "" 
  type        = string
  description = "Select the Region"
}

variable compartment_id_in_subtree {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable compartment_name {
    type        = string
    default     = ""
    description = "Compartment Name to deploy the DRG"
}

###################################
## Managed Database Group Variables
###################################

variable "managed_database_group_name"{
    type        = string
    default     = "TestGroup1"
    description = "managed_database_group_name"  
}

variable "managed_database_group_description"{
    type        = string
    default     = "managed_database_group"
    description = "managed database group" 
}
