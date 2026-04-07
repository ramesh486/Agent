variable "compartment_ocid"{}
variable "catalog_private_endpoint_display_name"{}
variable "catalog_private_endpoint_dns_zones"{}
variable "subnet_ocid"{}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
