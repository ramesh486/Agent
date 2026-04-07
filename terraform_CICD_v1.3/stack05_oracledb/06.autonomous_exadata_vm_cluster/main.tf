module "Exadata_VMcluster" {
  source                                                      = "./exadata_vmcluster_module"  
  region                                                      = var.region
  tenancy_ocid                                                = var.tenancy_ocid
  compartment_ocid                                            = local.compartment_ocid
  project_tag                                                 = var.project_tag
  cloud_exadata_infrastructure_ocid                           = var.cloud_exadata_infrastructure_ocid
  cloud_auto_vm_cluster_display_name                          = var.cloud_auto_vm_cluster_display_name
  cloud_auto_vm_cluster_subnet_ocid                           = var.cloud_auto_vm_cluster_subnet_ocid
  cloud_auto_vm_cluster_data_storage_size_in_tbs              = var.cloud_auto_vm_cluster_data_storage_size_in_tbs           
  cloud_auto_vm_cluster_cpu_core_count_per_node               = var.cloud_auto_vm_cluster_cpu_core_count_per_node
  cloud_auto_vm_cluster_is_mtls_enabled_vm_cluster            = var.cloud_auto_vm_cluster_is_mtls_enabled_vm_cluster
  cloud_auto_vm_cluster_license_model                         = var.cloud_auto_vm_cluster_license_model
  cloud_auto_vm_cluster_maintenance_window_days_of_week_name  = var.cloud_auto_vm_cluster_maintenance_window_days_of_week_name
  cloud_auto_vm_cluster_maintenance_window_months_name        = var.cloud_auto_vm_cluster_maintenance_window_months_name
  cloud_auto_vm_cluster_memory_per_oracle_compute_unit_in_gbs = var.cloud_auto_vm_cluster_memory_per_oracle_compute_unit_in_gbs
  cloud_auto_vm_cluster_total_container_databases             = var.cloud_auto_vm_cluster_total_container_databases
}