variable "compartment_ocid" {
    type         = string
    default      = ""
    description  = "The OCID (Oracle Cloud Identifier) of the compartment where the BDS instance will be created."
}
variable "region" {
    type         = string
    default      = ""
    description  = "The region where the BDS instance will be deployed."
}

variable "display_name" {
    type         = string
    default      = "bds-example"
    description  = "The name of the BDS instance."
}
variable "cluster_admin_password" {
    type         = string
    default      = "SW5pdDAxQA=="
    description  = "The password for the BDS instance's cluster."
}
variable "is_high_availability" {
    type         = bool
    default      = false
    description  = "Specifies whether the BDS instance has high availability."
}
variable "is_secure" {
    type         = bool
    default      = false
    description  = "Specifies whether the BDS instance is secure."
}
variable "cluster_version" {
    type         = string
    default      = "CDH6"
    description  = "The version of the BDS cluster."
}
variable "master_node_shape" {
    type         = string
    default      = "VM.Standard2.4"
    description  = "The shape  for the master node in the BDS cluster."
}
variable "subnet_ocid" {
    type         = string
    default      = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaabhu3rz4yfl7gzyga7kmpyvcl4rtzgoyw2y7atvhhf23gyck77sma"
    description  = "The OCID of the subnet where the BDS cluster will be provisioned."
}

variable "master_node_block_volume_size_in_gbs" {
    type         = number
    default      = 150
    description  = "The block volume size in gigabytes for the master node in the BDS cluster."
}
variable "master_node_number_of_nodes" {
    type         = number
    default      = 1
    description  = "The number of nodes in the master node group of the BDS cluster."
}

variable "util_node_shape" {
    type         = string
    default      = "VM.Standard2.4"
    description  = "The shape  for the utility nodes in the BDS cluster."
}

variable "util_node_shape_block_volume_size_in_gbs" {
    type         = number
    default      = 150
    description  = "The block volume size in gigabytes for the utility nodes in the BDS cluster."
}
variable "util_node_shape_number_of_nodes" {
    type         = number
    default      = 1
    description  = "The number of nodes in the utility node group of the BDS cluster."
}

variable "worker_node_shape" {
    type         = string
    default      = "VM.Standard2.1"
    description  = "The shape for the worker nodes in the BDS cluster."
}


variable "worker_node_shape_block_volume_size_in_gbs" {
    type         = number
    default      = 150
    description  = "The block volume size in gigabytes for the worker nodes in the BDS cluster."
}
variable "worker_node_number_of_nodes" {
    type         = number
    default      = 3
    description  = "The number of nodes in the worker node group of the BDS cluster."
}
variable "cluster_public_key" {
    type         = string
    default      = ""
    description  = "Provide the public key in OpenSSH format."
}
