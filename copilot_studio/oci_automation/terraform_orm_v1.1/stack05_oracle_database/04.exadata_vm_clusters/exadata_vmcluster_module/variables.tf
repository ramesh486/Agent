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
variable "backup_subnet_ocid" {}

variable "cloud_exadata_infrastructure_ocid" {}

variable "cloud_vm_cluster_cpu_core_count" {}

variable "cloud_vm_cluster_display_name" {}

variable "cloud_vm_cluster_gi_version" {}

variable "cloud_vm_cluster_hostname" {}

variable "cloud_vm_cluster_ssh_public_keys" {}

variable "subnet_ocid" {}

variable "cloud_vm_cluster_cluster_name" {}

variable "cloud_vm_cluster_data_storage_size_in_tbs" {}

variable "cloud_vm_cluster_db_node_storage_size_in_gbs" {}

variable "cloud_vm_cluster_is_local_backup_enabled" {}

variable "cloud_vm_cluster_license_model" {}

variable "cloud_vm_cluster_memory_size_in_gbs" {}

variable "cloud_vm_cluster_ocpu_count" {}