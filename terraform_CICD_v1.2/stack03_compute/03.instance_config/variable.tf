
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
        "Automation_Tags.Automation_ResourceType" = "Instance_config"
        }
      freeformTags = {}
  }
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

variable "ipxe_script" {
  type = string
  default = "ipxeScript"
  description = "ipxe script"
}

variable "instance_shape" {
  type        = string
  description = "shape"  
  default     = "VM.Standard.E4.Flex"
}

variable "display_name" {
  type        = string
  description = " display name"  
	default     = "TestInstanceConfigurationLaunchDetails"
}

variable "is_pv_encryption_in_transit_enabled" {
  type        = bool
  description = "is_pv_encryption_in_transit_enabled ?"  
	default     = false
}

variable "preferred_maintenance_action" {
  type        = string
  description = "preferred maintenance action"  
	default     = "LIVE_MIGRATE"
}

variable "launch_mode" {
  type        = string
  description = "launch mode"  
	default     = "NATIVE"
}

variable "is_management_disabled" {
  type        = bool
  description = "is_management_disabled ?"  
	default     = false
}

variable "is_monitoring_disabled" {
  type        = bool
  description = "is_monitoring_disabled"  
	default     = false
}

variable "network_type" {
  type        = string
  description = "network type"  
	default     = "PARAVIRTUALIZED"
}

variable "are_legacy_imds_endpoints_disabled" {
  type        = bool
  description = "are legacy imds endpoints disabled?"  
	default     = false
}

variable "ocpus" {
  type        = string
  description = "OCPU count for VM"  
	default     = "4"
}

variable "memory_in_gbs" {
  type        = string
  description = "Memory in gbs"  
	default     = "60"
}

variable "assign_private_dns_record" {
  type        = bool
  description = "assign private dns record"  
	default     = false
}

variable "assign_public_ip" {
  type        = bool
  description = "assign public ip"  
	default     = true
}

variable "vnic_display_name" {
  type        = string
  description = "display_name"  
	default     = "TestInstanceConfigurationVNIC"
}

variable "skip_source_dest_check" {
  type        = bool
  description = "skip_source_dest_check"  
	default     = false
}

variable "source_type" {
  type        = string
  description = "source type"  
	default     = "image"
}

variable "source_image_ocid" {
  type        = string
  description = "source_image_ocid" 
	default     = ""
}

