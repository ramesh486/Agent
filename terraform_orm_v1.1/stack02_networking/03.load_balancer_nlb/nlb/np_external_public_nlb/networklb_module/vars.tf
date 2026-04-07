variable compartment_ocid {} 
variable subnet_ocid {}
variable "definedTags" {
  type = map
  default = {}
}
variable "freeformTags" {
  type = map
  default = {}
}
variable nlb_display_name {}
variable is_private {}
variable nlb_ip_version {}

### END