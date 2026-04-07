variable "region" {
  type = string
  description = "Enter the Region"
  default = "us-ashburn-1"
}

variable "tenancy_ocid" {
  type = string
  description = "Enter the Tenancy OCID"
  default = ""
}

variable "compartment_ocid" {
  type = string
  description = "Enter the Compartment OCID"
  default = ""
}

variable "byoip_range_id" {
  type = string
  description = "BYOIP range id."
  default = ""
}

variable "public_ip_pool_cidr_block" {
  type = string
  description = "Public IP pool CIDR block."
  default = ""
}
