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
variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "Compartment ID in Subtree"
}

variable "description" {
  type        =  string
  description = "description"
  default     = "OAC instance"
}

variable "feature_set" {
  type        =  string
  description = "feature set"
  default     = "ENTERPRISE_ANALYTICS"
}

variable "license_type" {
  type        =  string
  description = "license type"
  default     = "LICENSE_INCLUDED"
}

variable "capacity_type" {
  type        =  string
  description = "capacity type"
  default     = "OLPU_COUNT"
}

variable "capacity_value" {
  type        =  number
  description = "capacity value"
  default     = 2
}

variable "name" {
  type        =  string
  description = "name"
  default     = "testoacinstance1"
}

variable "state" {
  type        =  string
  description = "state"
  default     = "ACTIVE"
}

variable "idcs_access_token" {
  type        =  string
  description = "idcs access token"
  default     = ""
}



variable "network_endpoint_type" {
  type        =  string
  description = "network endpoint type"
  default     = "PUBLIC"
}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}