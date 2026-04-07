variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

### private endpoint Variables


variable "private_endpoint_display_name" {
  type = string
  default = "private_endpoint"
  description = "Name for private endpoint"
}

variable "subnet_ocid" {
  type = string
  default = ""
  description = "Provide Subnet OCID"
}

variable "vcn_ocid" {
  type = string
  default = ""
  description = "Provide VCN OCID"
}

variable "private_endpoint_is_used_with_configuration_source_provider" {
  type = bool
  default = true
  description = "Private endpoint to be used with a configuration source provider."
}