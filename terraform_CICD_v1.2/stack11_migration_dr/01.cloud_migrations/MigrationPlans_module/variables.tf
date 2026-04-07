variable "compartment_ocid" { }

variable "migration_ocid" { }

variable "migration_plan_display_name" { }

variable "migration_plan_strategies_resource_type" { }

variable "migration_plan_strategies_strategy_type" { }

variable "migration_plan_target_environments_subnet" { }

variable "migration_plan_target_environments_target_environment_type" { }

variable "migration_plan_target_environments_vcn" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

