resource "oci_cloud_migrations_migration_plan" "this" {
  
  compartment_id           = var.compartment_ocid
  display_name             = var.migration_plan_display_name
  migration_id             = var.migration_ocid
  strategies {
    resource_type         = var.migration_plan_strategies_resource_type
    strategy_type         = var.migration_plan_strategies_strategy_type
  }
  target_environments {
    subnet                  = var.migration_plan_target_environments_subnet
    target_environment_type = var.migration_plan_target_environments_target_environment_type
    vcn                     = var.migration_plan_target_environments_vcn
  }
}



