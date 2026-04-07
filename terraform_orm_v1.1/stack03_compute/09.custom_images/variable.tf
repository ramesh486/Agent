variable "tenancy_ocid" {
  type    = string
  default = ""
  description = "select tenancy ocid"
}

variable "region" {
  type    = string
  default = "us-ashburn-1"
  description = "select region"
}

variable "compartment_ocid" {
  type    = string
  default = ""
  description = "select compartment ocid"
}

variable "launch_mode" {
  type    = string
  default = "NATIVE"
  description = "select launch mode"
}

variable "image_timeout_create" {
  type    = string
  default = "30m"
  description = "select image timeout create"
}

variable "instance_ocid" {
  type    = string
  default = ""
  description = "select instance ocid"
}