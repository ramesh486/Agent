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
#deticated vm host
variable "compartment_ocid" {
  type        = string
  description = "Choose the Compartment where to deploy the resources"  
	default     = ""
}

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

