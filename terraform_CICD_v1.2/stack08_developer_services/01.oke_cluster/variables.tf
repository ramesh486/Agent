###############################
###### Commmon variables ######
###############################

variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}

variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}

variable "app_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = "app"
    description = "Compartment Name to deploy"
}
variable "network_compartment_id_in_subtree" {
    type         = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable "k8s_api_endpoint_subnet_display_name" {
  type          = string
  default       = "k8s_api_endpoint_subnet"
  description   = "The subnet in which the application is deployed"
}

variable "worker_subnet_display_name" {
  type          = string
  default       = "worker_subnet"
  description   = "The subnet in which the application is deployed"
}

variable "load_balancer_subnet_display_name" {
  type          = string
  default       = "load_balancer"
  description   = "The subnet in which the application is deployed"
}
variable "Vcn_display_name" {
  type          = string
  default       = ""
  description   = "The Vcn in which the application is deployed"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Oke_cluseter"
        }
      freeformTags = {}
  }
}
# OKE Node Pool

variable "node_pool_regional_size" {
    type        = number
    default     = 1
    description = "The number of instances in the regional node pool."
}

variable "node_pool_count" {
    type        = number
    default     = 1
    description = "The number of regional node pools."
}

variable "instance_vm_image_ocid" {
    type        = string
    default     = ""
    description = "The OCID (Oracle Cloud Identifier) of the VM image to use for the instances."
}

variable "node_instance_shape" {
    type        = string
    default     = "VM.Optimized3.Flex"
    description = "The shape or type of the instances in the node pool."
}

variable "node_pool_node_source_details_boot_volume_size_in_gbs" {
    type        = string
    default     = "4"
    description = "The size of the boot volume in gigabytes for the node pool instances."
}

variable "node_config_memory_in_gbs" {
    type        = number
    default     = 4
    description = "The amount of memory in gigabytes for each instance in the node pool."
}

variable "node_config_ocpus" {
    type        = number
    default     = 1
    description = "The number of OCPUs (Oracle Compute Units) for each instance in the node pool."
}

##############################################
######## OKE Cluster ########
##############################################


variable "oke_display_name" {
  type        = string
  description = "The display name for the Oracle Kubernetes Engine (OKE) cluster."
  default     = "Example_oke"
}

variable "create_private_k8s_endpoint" {
  type        = bool
  description = "Whether to create a private Kubernetes endpoint."
  default     = false
}


variable "use_custom_ssh_public_key" {
    type        = bool
    default     = false
    description = "Set to true if you want to use a custom SSH public key for worker nodes."
}

variable "ssh_public_key" {
    type        = string
    default     = ""
    description = "The public SSH key to be used for authentication if 'use_custom_ssh_public_key' is true."
}

variable "k8s_cluster_pods_cidr_blocks" {
    type        = string
    default     = "172.17.0.0/16"
    description = "The CIDR blocks for the pods in the Kubernetes cluster."
}

variable "k8s_cluster_services_cidr_blocks" {
    type        = string
    default     = "172.16.0.0/16"
    description = "The CIDR blocks for the services in the Kubernetes cluster."
}

variable "pod_network_option_details_cni_type" {
    type        = string
    default    = "OCI_VCN_IP_NATIVE"
    description = "The type of Container Network Interface (CNI) to use. Valid values: OCI_VCN_IP_NATIVE or FLANNEL_OVERLAY."
}

variable "pod_network_option_details_max_pods_per_node" {
    type        = number
    default     = 0
    description = "The maximum number of pods that can run on a single node in the cluster."
}

variable "pod_network_option_details_pod_nsg_ids" {
    type        = list
    default     = [] 
    description = "The NSG (Network Security Group) OCIDs to apply to the pods."
}

variable "pod_network_option_details_pod_subnet_ids" {
    type        = list
    default     = []  
    description = "The subnet OCIDs to be used for the pods."
}
