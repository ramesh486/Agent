##############migration_asset

module oci_cloud_migrations_migration_asset {
  source                                     = "./MigrationAssets_module"      
  migration_asset_availability_domain        = var.migration_asset_availability_domain
  migration_asset_display_name               = var.migration_asset_display_name
  inventory_asset_ocid                       = var.inventory_asset_ocid
  replication_compartment_ocid               = var.replication_compartment_ocid
  snap_shot_bucket_name                      = var.snap_shot_bucket_name
  migration_ocid                             = module.oci_cloud_migrations_migration.migration_ocid
  
}

##########cloud_migrations_migration_plan

module oci_cloud_migrations_migration_plan {
  source                                     = "./MigrationPlans_module" 
  compartment_ocid                           = var.compartment_ocid
  migration_plan_display_name                = var.migration_plan_display_name
  migration_ocid                             = module.oci_cloud_migrations_migration.migration_ocid
  migration_plan_strategies_resource_type    = var.migration_plan_strategies_resource_type
  migration_plan_strategies_strategy_type    = var.migration_plan_strategies_strategy_type
  migration_plan_target_environments_subnet  = var.migration_plan_target_environments_subnet
  migration_plan_target_environments_target_environment_type = var.migration_plan_target_environments_target_environment_type
  migration_plan_target_environments_vcn     = var.migration_plan_target_environments_vcn
  project_tag                                = var.project_tag
}

##################migration

module oci_cloud_migrations_migration {
  source                   = "./Migrations_module" 
  compartment_ocid         = var.compartment_ocid
  migration_display_name   = var.migration_display_name
  project_tag                                = var.project_tag
}

###########cloud_migrations_target_asset

module oci_cloud_migrations_target_asset {
  source                                  = "./TargetAssets_module"
  target_asset_is_excluded_from_execution = var.target_asset_is_excluded_from_execution
  target_asset_preferred_shape_type       = var.target_asset_preferred_shape_type
  target_asset_type                       = var.target_asset_type
  migration_plan_ocid                     = module.oci_cloud_migrations_migration_plan.migration_plan_ocid
  target_asset_user_spec_agent_config_plugins_config_desired_state          = var.target_asset_user_spec_agent_config_plugins_config_desired_state
  target_asset_user_spec_agent_config_plugins_config_name                   = var.target_asset_user_spec_agent_config_plugins_config_name
  target_asset_user_spec_preemptible_instance_config_preemption_action_type = var.target_asset_user_spec_preemptible_instance_config_preemption_action_type
  target_asset_user_spec_source_details_source_type                         = var.target_asset_user_spec_source_details_source_type
  boot_volume_ocid                                                          = var.boot_volume_ocid
  }
