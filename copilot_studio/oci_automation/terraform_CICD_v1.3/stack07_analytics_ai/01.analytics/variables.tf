#####################################
# Common Variables
#####################################

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

variable "compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment name to deploy the resource"
}

#####################################
## Analytics Variables
#####################################

variable "description" {
  type        =  string
  description = "Description"
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
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "analytics"
        }
      freeformTags = {}
  }
}