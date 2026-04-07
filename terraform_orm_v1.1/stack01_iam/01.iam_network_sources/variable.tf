variable "region" {
  type        = string
  description = "region"  
  default = "us-ashburn-1"
}

variable "compartment_id" {
  type        = string
  description = "The compartment ID for the VCN and network source."
  default = ""
}

variable "network_source_description" {
  type        = string
  description = "The description for the network source."  
  default = "corporate ip ranges to be used for ip based authorization"
}

variable "network_source_name" {
  type        = string
  description = "The name for the network source."
  default = "corpnet"
}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

