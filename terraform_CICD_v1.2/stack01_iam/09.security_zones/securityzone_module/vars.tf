variable "compartment_ocid" {}
variable "security_zone_display_name" {}
variable "security_recipe_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


