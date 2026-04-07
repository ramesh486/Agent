variable "compartment_ocid" {}
variable "domain_display_name" {}
variable "domain_description" {}
variable "domain_home_region" {}
variable "domain_license_type" {}
variable "definedTags" {
    type = map
    default = {}
    description = ""
}
variable "freeformTags" {
    type = map
    default = {}
    description = ""
}
