variable "compartment_ocid" {}
variable "security_zone_display_name" {}
variable "security_recipe_ocid" {}
variable "definedTags" {
  type = map
  default = {}
}
variable "freeformTags" {
  type = map
  default = {}
}


