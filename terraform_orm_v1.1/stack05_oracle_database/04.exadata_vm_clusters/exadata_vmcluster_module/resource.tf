resource "oci_database_cloud_vm_cluster" "this" {
  backup_subnet_id                = var.backup_subnet_ocid
  cloud_exadata_infrastructure_id = var.cloud_exadata_infrastructure_ocid
  compartment_id                  = var.compartment_ocid
  cpu_core_count                  = var.cloud_vm_cluster_cpu_core_count
  display_name                    = var.cloud_vm_cluster_display_name
  gi_version                      = var.cloud_vm_cluster_gi_version
  hostname                        = var.cloud_vm_cluster_hostname
  ssh_public_keys                 = [var.cloud_vm_cluster_ssh_public_keys,]
  subnet_id                       = var.subnet_ocid
  cluster_name                    = var.cloud_vm_cluster_cluster_name
  data_storage_size_in_tbs        = var.cloud_vm_cluster_data_storage_size_in_tbs
  db_node_storage_size_in_gbs     = var.cloud_vm_cluster_db_node_storage_size_in_gbs
  defined_tags                    = var.project_tag.definedTags
  freeform_tags                   = var.project_tag.freeformTags
  is_local_backup_enabled         = var.cloud_vm_cluster_is_local_backup_enabled
  license_model                   = var.cloud_vm_cluster_license_model
  memory_size_in_gbs              = var.cloud_vm_cluster_memory_size_in_gbs
  ocpu_count                      = var.cloud_vm_cluster_ocpu_count
}