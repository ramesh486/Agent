variable "tenancy_ocid" {
  type    = string
  default = ""
  description = "give here tenancy ocid"

}

variable "region" {
  type    = string
  default = "us-ashburn-1"
  description = "give here region"
}

variable "compartment_ocid" {
  type    = string
  default = ""
  description = "give here compartment ocid"

}



# ----------------------------------------
#  Auto Scaling Configuration
# ----------------------------------------
variable "cool_down_in_seconds" {
  type = number
  default = "300"
  description = "cool down in seconds"
}

variable "auto_scaling_configuration_display_name" {
  type = string
  default = "TestAutoScalingConfiguration"
  description = "auto scaling configuration display name"
}

variable "policy_display_name" {
  type = string
  default = "TestPolicy"
  description = "policy display name"
}

variable "policy_type" {
  type = string
  default = "threshold"
  description = "policy type"
}

variable "instance_pool_ocid" {
  type = string
  default = ""
  description = "instance pool ocid"
}


