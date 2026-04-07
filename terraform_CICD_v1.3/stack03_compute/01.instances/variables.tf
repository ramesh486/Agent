

 variable region {
   type        = string
   description = "Enter Region"  
 	default     = "us-ashburn-1"  
 }

 variable tenancy_ocid { 
   type        = string
   description = "Enter Tenancy OCID"  
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



variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Instance"
        }
      freeformTags = {}
  }
}
##########################################
# Connectivity VM Configuration Variables
###########################################

# variable subnet_ocid { 
#   type        = string
#   description = "Enter Subnet OCID"  
# 	default     = ""
# }


variable subnet_display_name{
  type = string
  default = ""
  description = "Name of the Subnet"
}



variable "vm_display_name" {
  type        = string
  description = "vm display name"  
	default     = ""
}

variable "are_all_plugins_disabled" {
  type        = bool
  description = "Are all plugins disabled?"  
  default     = false
}

variable "is_management_disabled" {
  type        = bool
  description = "Is management disabled?"  
  default     = false
}

variable "is_monitoring_disabled" {
  type        = bool
  description = "Is monitoring disabled?"  
  default     = false
}

variable "desired_state1" {
  type        = string
  description = "Desired State1"  
  default     = "DISABLED" 
}

variable "name1" {
  type        = string
  description = "Scans the instance for security vulnerabilities."  
  default     = "Vulnerability Scanning" 
}

variable "desired_state2" {
  type        = string
  description = "Desired State2"  
  default     = "ENABLED" 
}

variable "name2" {
  type        = string
  description = "Manages updates and patches for the operating system environment on the instance."  
  default     = "OS Management Service Agent" 
}

variable "desired_state3" {
  type        = string
  description = "desired_state3"  
  default     = "DISABLED" 
}

variable "name3" {
  type        = string
  description = "Collects data from resources such as OSs, applications, and infrastructure resources for OCI services that are integrated with Management Agent. Data can include observability, log, configuration, capacity, and health data."  
  default     = "Management Agent"
}

variable "desired_state4" {
  type        = string
  description = "desired_state4"  
  default     = "ENABLED"
}

variable "name4" {
  type        = string
  description = "Ingests custom logs into the Logging service."  
  default     = "Custom Logs Monitoring"
}

variable "desired_state5" {
  type        = string
  description = "desired_state5"  
  default     = "ENABLED"
}

variable "name5" {
  type        = string
  description = "Runs scripts within the instance to remotely configure, manage, and troubleshoot the instance."  
  default     = "Compute Instance Run Command"
}

variable "desired_state6" {
  type        = string
  description = "desired_state6"  
  default     = "ENABLED"
}

variable "name6" {
  type        = string
  description = "Emits metrics about the instance's health, capacity, and performance."  
  default     = "Compute Instance Monitoring"
}

variable "desired_state7" {
  type        = string
  description = "desired_state7"  
  default     = "DISABLED"
}

variable "name7" {
  type        = string
  description = "Configures block volume sessions within the instance."  
  default     = "Block Volume Management"
}

variable "assign_public_ip" {
  type        = string
  description = "Assign public IP"  
	default     = "false"
}

variable "vnic_hostname" {
  type        = string
  description = "vnic Hostname"  
	default     = ""
}

variable "fault_domain" {
  type        = string
  description = "Fault Domain"  
	default     = "FAULT-DOMAIN-1"
}

variable "boot_volume_type" {
  type        = string
  description = "boot volume type"  
	default     = "PARAVIRTUALIZED"
}

variable "firmware" {
  type        = string
  description = "firmware"  
	default     = "UEFI_64"
}

variable "network_type" {
  type        = string
  description = "network type"  
	default     = "PARAVIRTUALIZED"
}

variable "remote_data_volume_type" {
  type        = string
  description = "remote data volume type"  
	default     = "PARAVIRTUALIZED"
}

### SSH Public Key ###
variable "ssh_authorized_keys" {
  type        = string
  description = "ssh authorized key"  
	default     = ""
 }

variable "vm_shape" {
  type        = string
  description = "VM shape"  
	default     = "VM.Standard.E4.Flex"
}

variable "memory_in_gbs" {
  type        = string
  description = "Memory in gbs"  
	default     = "16"
}

variable "ocpu_count" {
  type        = string
  description = "OCPU count for VM"  
	default     = "1"
}


variable "source_image_ocid" { 
  type        = string
  description = "Image OCID"  
	default     = "ocid1.image.oc1.iad.aaaaaaaanpammf3j2xcbcoykbwlk3m35ko6svsdj2sut2fjtmnmujcnh3pvq"
}

variable "source_type" { 
  type        = string
  description = "Source image type"  
	default     = "image"
}


### END
