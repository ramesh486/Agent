variable "compartment_ocid" {}
variable "region" {}
variable "ca_bundle_ca_bundle_pem" {}
variable "description" {}
variable "ca_bundle_name" {}
variable "definedTags" {
  type = map
  default = {}
}
variable "freeformTags" {
  type = map
  default = {}
} 
