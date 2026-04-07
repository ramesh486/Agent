resource "oci_database_cloud_autonomous_vm_cluster" "this" {
    cloud_exadata_infrastructure_id = var.cloud_exadata_infrastructure_ocid
    compartment_id                  = var.compartment_ocid
    display_name                    = var.cloud_auto_vm_cluster_display_name
    subnet_id                       = var.cloud_auto_vm_cluster_subnet_ocid
    autonomous_data_storage_size_in_tbs = var.cloud_auto_vm_cluster_data_storage_size_in_tbs
    cpu_core_count_per_node         = var.cloud_auto_vm_cluster_cpu_core_count_per_node
    defined_tags                    = var.project_tag.definedTags
    freeform_tags                   = var.project_tag.freeformTags
    is_mtls_enabled_vm_cluster      = var.cloud_auto_vm_cluster_is_mtls_enabled_vm_cluster
    license_model                   = var.cloud_auto_vm_cluster_license_model
    maintenance_window_details {
      days_of_week {
        name = var.cloud_auto_vm_cluster_maintenance_window_days_of_week_name
    }
      months {
        name = var.cloud_auto_vm_cluster_maintenance_window_months_name
        }
    }
    memory_per_oracle_compute_unit_in_gbs = var.cloud_auto_vm_cluster_memory_per_oracle_compute_unit_in_gbs
    total_container_databases       = var.cloud_auto_vm_cluster_total_container_databases
}