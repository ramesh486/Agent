variable "region" {
  type = string
  description = "Enter the Region"
  default = "us-ashburn-1"
}

variable "tenancy_ocid" {
  type = string
  description = "Enter the Tenancy OCID."
  default = ""
}

variable "compartment_ocid" {
  type = string
  description = "Enter the Compartment OCID"
  default = ""
}

variable "display_name" {
  type = string
  description = "Display name of the reserved public IP."
  default = "pub_ip_add_1"
}

variable "lifetime" {
  type = string
  description = "Life time of the Public IP."
  default = "RESERVED"
}

