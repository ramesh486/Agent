variable "region" {
  type        = string
  description = "Enter Region"  
 	default     = "us-ashburn-1"  
}
variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy_ocid"  
 	default     = ""  
}

variable "app_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}
variable "network_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable subnet_display_name{
  type = string
  default = ""
  description = "Name of the Subnet"

}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Paloalto_VM"
        }
      freeformTags = {}
  }
}



############## virtual machine ###############

variable "is_management_disabled" {
  type        = bool
  description = "is_management_disabled"  
 	default     = false 
}

variable "is_monitoring_disabled" {
  type        = bool
  description = "is_monitoring_disabled"  
 	default     = false 
}

variable "ssh_authorized_keys" {
  type = string
  description = "ssh authorized keys"
  default = ""
}


variable "desired_state1" {
  type        = string
  description = "desired_state1"  
 	default     = "DISABLED" 
}

variable "name1" {
  type        = string
  description = "name1"
 	default     = "Vulnerability Scanning" 
}

variable "desired_state2" {
  type        = string
  description = "desired_state"  
 	default     = "DISABLED" 
}

variable "name2" {
  type        = string
  description = "name"
 	default     = "Oracle Java Management Service" 
}

variable "desired_state3" {
  type        = string
  description = "desired_state"  
 	default     = "DISABLED" 
}

variable "name3" {
  type        = string
  description = "name"
 	default     = "Oracle Autonomous Linux"
}

variable "desired_state4" {
  type        = string
  description = "desired_state"  
 	default     = "ENABLED" 
}

variable "name4" {
  type        = string
  description = "name"
  default     = "OS Management Service Agent" 
}

variable "desired_state5" {
  type        = string
  description = "desired_state"  
 	default     = "DISABLED" 
}

variable "name5" {
  type        = string
  description = "name"
 	default     = "Management Agent" 
}

variable "desired_state6" {
  type        = string
  description = "desired_state"  
 	default     = "ENABLED" 
}

variable "name6" {
  type        = string
  description = "name"
 	default     = "Custom Logs Monitoring" 
}
variable "desired_state7" {
  type        = string
  description = "desired_state"  
 	default     = "ENABLED" 
}

variable "name7" {
  type        = string
  description = "name"
 	default     = "Compute Instance Run Command" 
}

variable "desired_state8" {
  type        = string
  description = "desired_state"  
 	default     = "ENABLED" 
}

variable "name8" {
  type        = string
  description = "name"
 	default     = "Compute Instance Monitoring" 
}

variable "desired_state9" {
  type        = string
  description = "desired_state"  
 	default     = "DISABLED" 
}

variable "name9" {
  type        = string
  description = "name"
 	default     = "Block Volume Management" 
}

variable "desired_state10" {
  type        = string
  description = "desired_state"  
 	default     = "DISABLED" 
}

variable "name10" {
  type        = string
  description = "name"
 	default     = "Bastion" 
}

variable "recovery_action" {
  type        = string
  description = "recovery action"
  default     = "RESTORE_INSTANCE" 
}

variable "assign_private_dns_record" {
  type        = bool
  description = "assign private dns record"
  default     = true 
}

variable "assign_public_ip" {
  type        = bool
  description = "assign public ip"
  default     = false
}

variable "are_legacy_imds_endpoints_disabled" {
  type        = bool
  description = "are legacy imds endpoints disabled"
  default     = false
}


variable "display_name" {
  type        = string
  description = "display name"
  default     = "PaloAltoVM"
}

variable "shape" {
  type        = string
  description = "shape"
  default     = "VM.Optimized3.Flex"
}

variable "memory_in_gbs" {
  type        = number
  description = "memory in gbs"
  default     = 14
}

variable "ocpus" {
  type        = number
  description = "ocpus"
  default     = 1
}

variable "source_id" {
  type        =  string
  description = "source id"
  default     = ""

}

variable "source_type" {
  type        =  string
  description = "source type"
  default     = "image"

}
