variable "tenancy_ocid" {
  type    = string
  default = ""
  description = "give here tenancy ocid"

}

variable "region" {
  type    = string
  default = "us-ashburn-1"
  description = "give here region"
}

variable "compartment_ocid" {
  type    = string
  default = ""
  description = "give here compartment ocid"

}

# ----------------------------------------
#  instance Variables
# ----------------------------------------

variable subnet_ocid { 
  type        = string
  description = "Enter Subnet OCID"  
	default     = ""
}

variable "vm_display_name" {
  type        = string
  description = "vm display name"  
	default     = "test_instance"
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
  description = "Name of Desired State1"  
  default     = "Vulnerability Scanning" 
}

variable "desired_state2" {
  type        = string
  description = "Desired State2"  
  default     = "ENABLED" 
}

variable "name2" {
  type        = string
  description = "Name of Desired State2"  
  default     = "OS Management Service Agent" 
}

variable "desired_state3" {
  type        = string
  description = ""  
  default     = "DISABLED" 
}

variable "name3" {
  type        = string
  description = "Name of Desired State3"  
  default     = "Management Agent"
}

variable "desired_state4" {
  type        = string
  description = ""  
  default     = "ENABLED"
}

variable "name4" {
  type        = string
  description = "Name of Desired State4"  
  default     = "Custom Logs Monitoring"
}

variable "desired_state5" {
  type        = string
  description = ""  
  default     = "ENABLED"
}

variable "name5" {
  type        = string
  description = "Name of Desired State5"  
  default     = "Compute Instance Run Command"
}

variable "desired_state6" {
  type        = string
  description = ""  
  default     = "ENABLED"
}

variable "name6" {
  type        = string
  description = "Name of Desired State6"  
  default     = "Compute Instance Monitoring"
}

variable "desired_state7" {
  type        = string
  description = ""  
  default     = "DISABLED"
}

variable "name7" {
  type        = string
  description = "Name of Desired State7"  
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
	default     = "oicagent"
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

variable "instance_shape" {
  type        = string
  description = "VM shape"  
	default     = "VM.Standard.E4.Flex"
}

variable "memory_in_gbs" {
  type        = string
  description = "Memory in gbs"  
	default     = "16"
}

variable "ocpus" {
  type        = string
  description = "OCPU count for VM"  
	default     = "1"
}


variable "source_image_ocid" { 
  type        = string
  description = "Image OCID"  
	default     = "ocid1.image.oc1.iad.aaaaaaaahomjycgg77iewnat3pysjvnp4ukpjtpyamacwetgdoptwst3n23a"
  #ocid1.image.oc1.us-sanjose-1.aaaaaaaaqxv2bo7i2ci2b2ambmrfz2ugi2yaaebmgqaxjitme2ecmyc3xgqa"
  #"ocid1.image.oc1.iad.aaaaaaaanpammf3j2xcbcoykbwlk3m35ko6svsdj2sut2fjtmnmujcnh3pvq"
}

variable "source_type" { 
  type        = string
  description = "Source image type"  
	default     = "image"
}

variable "instance_configuration_display_name" {
  type = string
  default = "TestInstanceConfiguration"
  description = "instance_configuration display name"
}
variable "instance_type" {
  type = string
  default = "compute"
  description = "instance type"
}
# ----------------------------------------
#  instance pool Variables
# ----------------------------------------
variable "instance_pool_size" {
  type = number
  default = "2"
  description = "instance pool size"
}

variable "instance_pool_state" {
  type = string
  default = "RUNNING"
  description = "instance pool state"
}

variable "instance_pool_display_name" {
  type = string
  default = "TestInstancePool"
  description = "instance pool display name"
}