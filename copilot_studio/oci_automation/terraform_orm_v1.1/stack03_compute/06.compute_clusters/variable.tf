variable "tenancy_ocid" {
  type    = string
  default = ""
  description = "Select tenancy ocid"
}

variable "region" {
  type    = string
  default = "us-ashburn-1"
  description = "Select the region"
}
variable "compartment_ocid" {
  type    = string
  default = ""
  description = "Select Compartment ocid"
}

variable "availability_domain" {
  type        = string
  description = "Select Availability Domain"  
  default     = "pMlX:US-ASHBURN-AD-1"
}

variable "compute_cluster_display_name" {
  type        = string
  description = "Provide compute cluster display name"  
  default     = "compute_cluster"
}



