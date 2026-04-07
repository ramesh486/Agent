####commom variables#####
variable "region" {
  type = string
  description = "region in which to launch instances."
  default = "us-ashburn-1"
}

variable "tenancy_ocid" {
  type = string
  description = "tenancy OCID in which to launch instances."
  default = ""
}

variable "compartment_ocid" {
  type = string
  description = "compartment OCID in which to launch instances."
  default = ""

}

variable "instance_count" {
  type = string
  description = "number of instances to launch."
  default = "1"
}

variable "capacity_reservation_display_name" {
  type = string
  default = "capacity_reservation"
  description = "capacity_reservation_display_name"
}

variable "instance_shape" {
  type = string
  default = "VM.Standard2.1"
  description = "instance shape"
}




