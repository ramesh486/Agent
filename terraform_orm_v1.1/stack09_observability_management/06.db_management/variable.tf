variable "compartment_ocid"{
    default     = ""
    description = ""
    type        = string
}
variable "region"{
    default     = ""
   
}

variable "managed_database_group_name"{
    type        = string
    default     = "TestGroup1"
    description = "managed_database_group_name"
    
}

# variable "managed_database_id"{
#     type        = string
#     default     = ""
#     description = "managed database id" 
# }

variable "managed_database_group_description"{
    type        = string
    default     = "managed_database_group"
    description = "managed database group "
   
}
