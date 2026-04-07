variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

### Exadata VM Cluster Variables

variable "backup_subnet_ocid" {
  type        = string
  default     = ""
  description = "The OCID of the backup network subnet associated with the cloud VM cluster."
}

variable "cloud_exadata_infrastructure_ocid" {
  type        = string
  default     = ""
  description = "The OCID of the cloud Exadata infrastructure resource."
}

variable "cloud_vm_cluster_cpu_core_count" {
  type        = number
  default     = 2
  description = "The number of CPU cores to enable for a cloud VM cluster."
}

variable "cloud_vm_cluster_display_name" {
  type        = string
  default     = "TestExadataVMCluster"
  description = "Name for the cloud VM cluster."
}

variable "cloud_vm_cluster_gi_version" {
  type        = string
  default     = "19c"
  description = "A valid Oracle Grid Infrastructure (GI) software version."
}

variable "cloud_vm_cluster_hostname" {
  type        = string
  default     = "vmhost"
  description = "The hostname for the cloud VM cluster"
}

variable "cloud_vm_cluster_ssh_public_keys" {
  type        = string
  default     = ""
  description = "The public key portion of one or more key pairs used for SSH access to the cloud VM cluster."
}

variable "subnet_ocid" {
  type        = string
  default     = ""
  description = "The OCID of the subnet associated with the cloud VM cluster."
}

variable "cloud_vm_cluster_cluster_name" {
  type        = string
  default     = "testVMcluster"
  description = "The cluster name for cloud VM cluster"
}

variable "cloud_vm_cluster_data_storage_size_in_tbs" {
  type        = number
  default     = 2.0
  description = "The data disk group size to be allocated in TBs."
}

variable "cloud_vm_cluster_db_node_storage_size_in_gbs" {
  type        = number
  default     = 6
  description = "The local node storage to be allocated in GBs."
}

variable "cloud_vm_cluster_is_local_backup_enabled" {
  type        = bool
  default     = false
  description = "If true, database backup on local Exadata storage is configured for the cloud VM cluster. If false, database backup on local Exadata storage is not available in the cloud VM cluster."
}

variable "cloud_vm_cluster_license_model" {
  type        = string
  default     = "BRING_YOUR_OWN_LICENSE"
  description = "The Oracle license model that applies to the cloud VM cluster."
}

variable "cloud_vm_cluster_memory_size_in_gbs" {
  type        = number
  default     = 12
  description = "The memory to be allocated in GBs."
}

variable "cloud_vm_cluster_ocpu_count" {
  type        = number
  default     = 2
  description = "The number of OCPU cores to enable for a cloud VM cluster."
}
