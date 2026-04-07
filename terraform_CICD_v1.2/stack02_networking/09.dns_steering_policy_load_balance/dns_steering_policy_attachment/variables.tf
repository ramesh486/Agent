# ----------------------------------------------------------
# DNS Traffic Managment Policy Attachment Variables
# ----------------------------------------------------------
variable "compartment_ocid" {}

variable "dns_sub_domain_name" {
  default = ""
}

variable "dns_steering_policy_ocid" {
  default = ""
}

variable "dns_zone_ocid" {
  default = ""
}