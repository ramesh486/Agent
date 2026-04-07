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


#"oci_core_cluster_network"
variable "instance_configuration_ocid" {
  type = string
  default = ""
  description = "select the instance configuration ocid"
}

variable "cluster_network_instance_pools_size" {
  type    = number
  default = "1"
  description = "cluster network instance pools size"

}
variable "cluster_network_instance_pools_display_name" {
  type    = string
  default = "cluster network instance pool"
  description = "cluster network instance pools display name"

}

variable "subnet_ocid" {
  type    = string
  default = ""
  description = "give here subnet ocid"
}




















