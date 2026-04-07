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
variable "cloud_exadata_infrastructure_ocid" {}

variable "cloud_auto_vm_cluster_display_name" {}

variable "cloud_auto_vm_cluster_subnet_ocid" {}

variable "cloud_auto_vm_cluster_data_storage_size_in_tbs" {}

variable "cloud_auto_vm_cluster_cpu_core_count_per_node" {}

variable "cloud_auto_vm_cluster_is_mtls_enabled_vm_cluster" {}

variable "cloud_auto_vm_cluster_license_model" {}

variable "cloud_auto_vm_cluster_maintenance_window_days_of_week_name" {}

variable "cloud_auto_vm_cluster_maintenance_window_months_name" {}

variable "cloud_auto_vm_cluster_memory_per_oracle_compute_unit_in_gbs" {}

variable "cloud_auto_vm_cluster_total_container_databases" {}