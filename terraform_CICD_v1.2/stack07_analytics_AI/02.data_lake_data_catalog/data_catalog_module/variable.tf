variable "compartment_ocid"{}
variable "catalog_display_name"{}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
