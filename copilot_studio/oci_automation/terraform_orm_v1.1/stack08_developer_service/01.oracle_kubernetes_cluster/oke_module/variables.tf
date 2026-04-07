################################
###### Commmon variables #######
################################

variable tenancy_ocid {
  description  = "OCI tenancy ID"
}

variable compartment_ocid {
  description  = "Compartment OCID"
}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

# OKE Node Pool
variable "node_pool_regional_size" { 
  default = 3 
}
variable "node_pool_count" {
  default = 1 
}
variable "instance_vm_image_ocid" { 
  default = "ocid1.image.oc1.iad.aaaaaaaakjvsts7rf7umrlqtw5hbhc3gjotadu7thfn5cfathwdn3awht7ca"
}
variable "node_instance_shape" { 
  default = "VM.Optimized3.Flex" 
}
variable "node_pool_node_source_details_boot_volume_size_in_gbs" { 
  default = "100" 
}
variable "node_config_memory_in_gbs" {
  default = 16
}
variable "node_config_ocpus" {
  default = 1
}

variable "pod_network_option_details_cni_type" {
  type = string
  description = "OCI_VCN_IP_NATIVE or FLANNEL_OVERLAY"
}

variable "pod_network_option_details_max_pods_per_node" {
  type =  number
  default = 0
}

variable "pod_network_option_details_pod_nsg_ids" {
  type = list 
  default = []  
}

variable "pod_network_option_details_pod_subnet_ids" {
  type = list 
  default = []  
}

##############################################
######## OKE Cluster ########
##############################################


variable "oke_display_name" {
  default = ""
}

variable "create_private_k8s_endpoint" {}

# Virtual Networking

variable "vcn_ocid" {}
variable "load_balancer_subnet_ocid" {}
variable "use_custom_ssh_public_key" {}
variable "ssh_public_key" {
  default = ""
}
variable "worker_node_subnet_ocid" {}
variable "k8s_api_endpoint_subnet" {}

variable "k8s_cluster_pods_cidr_blocks" {
  default = "172.17.0.0/16"
}

variable "k8s_cluster_services_cidr_blocks" {
  default = "172.16.0.0/16"
}

