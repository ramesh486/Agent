resource "oci_cloud_migrations_target_asset" "test_target_asset" {
  is_excluded_from_execution = var.target_asset_is_excluded_from_execution
  migration_plan_id          = var.migration_plan_ocid
  preferred_shape_type       = var.target_asset_preferred_shape_type
  type = var.target_asset_type
  user_spec {
    agent_config {
            plugins_config {
        desired_state        = var.target_asset_user_spec_agent_config_plugins_config_desired_state
        name                 = var.target_asset_user_spec_agent_config_plugins_config_name
      }
    }
    preemptible_instance_config {
      preemption_action {
        type                 = var.target_asset_user_spec_preemptible_instance_config_preemption_action_type
      }
    }
      source_details {
        source_type          = var.target_asset_user_spec_source_details_source_type
        boot_volume_id       = var.boot_volume_ocid
      
    }
  }
}

