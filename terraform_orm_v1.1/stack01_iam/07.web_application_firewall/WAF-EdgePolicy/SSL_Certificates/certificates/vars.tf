variable "compartment_ocid" {}
variable certificate_certificate_data {}
variable certificate_private_key_data {}
variable certificate_display_name {}
variable certificate_is_trust_verification_disabled {}
variable "definedTags" {
  type    = map
  default = {}
}
variable "freeformTags" {
  type    = map
  default = {}
}
