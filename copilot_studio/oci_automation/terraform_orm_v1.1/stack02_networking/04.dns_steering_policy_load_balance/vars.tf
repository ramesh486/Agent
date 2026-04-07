# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaayvk4dsqurhdbhriasojkdfhyapa5nkktkdmfukerllz7qnebqdfa"
}

variable "region" {
  default = "us-ashburn-1"
}

variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}

# ----------------------------------------
# DNS Traffic Managment Policy Variables
# ----------------------------------------

variable "dns_steering_policy_display_name" {
	default = "dns_terraform"
}

variable "health_check_ocid" {
	default = ""
}

variable "dns_steering_policy_type" {
	default = "LOAD_BALANCE"
}

variable "ttl" {
	default = "30"
}

# ----------------------------------------------------------
# DNS Traffic Managment Policy Attachment Variables
# ----------------------------------------------------------

variable "attach_dns_zone" {}

variable "dns_sub_domain_name" {
  default = ""
}

variable "dns_zone_ocid" {
  default = ""
}

