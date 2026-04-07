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
#####################################
# Private_endpoint
#####################################

variable "private_endpoint_display_name" {}
variable "subnet_ocid" {}
variable "vcn_ocid" {}
variable "private_endpoint_is_used_with_configuration_source_provider" {}



