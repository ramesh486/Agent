resource "oci_database_autonomous_database" "oci_database_autonomous_database" {
	admin_password = var.admin_password 
	autonomous_maintenance_schedule_type = var.autonomous_maintenance_schedule_type 
	character_set = var.character_set
	compartment_id = var.compartment_ocid
	cpu_core_count = var.cpu_core_count
	defined_tags        = var.project_tag.definedTags
    freeform_tags       = var.project_tag.freeformTags
	customer_contacts {
		email = var.email
	}
	data_storage_size_in_tbs = var.data_storage_size_in_tbs 
	db_name = var.db_name
	db_version = var.db_version 
	db_workload = var.db_workload
	display_name = var.display_name
	is_auto_scaling_enabled = var.is_auto_scaling_enabled
	is_auto_scaling_for_storage_enabled = var.is_auto_scaling_for_storage_enabled
	is_dedicated = var.is_dedicated
	is_preview_version_with_service_terms_accepted = var.is_preview_version_with_service_terms_accepted
	license_model = var.license_model
	ncharacter_set = var.ncharacter_set 
}