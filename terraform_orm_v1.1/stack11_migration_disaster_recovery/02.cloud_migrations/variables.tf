##########common variables

variable "tenancy_ocid" {
  type        = string
  default     = ""
  description = "Provide Tenancy OCID"
}


variable "region" {
  type        = string
  default     = "us-ashburn-1"
  description = "Provide Region"
}

variable "compartment_ocid" {
  type        = string
  default     = ""
  description = "Provide the Compartment OCID"
}

############Migration Asset#########

variable "migration_asset_availability_domain" {
  default     = "availabilityDomain"
  type        = string
  description = "Availability Domain"
}

variable "migration_asset_display_name" {
  default     = "displayName"
  type        = string
  description = "Migration Asset Display Name"
}

variable "inventory_asset_ocid" {
  default     = ""
  type        = string
  description = "OCID of an asset for an inventory"
}

variable "replication_compartment_ocid" {
  default     = ""
  type        = string
  description = "Replication compartment identifier"
}

variable "snap_shot_bucket_name" {
  default     = ""
  type        = string
  description = "Name of snapshot bucket"
}

#######migrationplan####

variable "migration_plan_display_name" {
  default     = "displayName"
  type        = string
  description = "Migration plan identifier"
}
variable "migration_plan_available_shape_availability_domain" {
  default     = "availabilityDomain"
  type        = string
  description = "Availability Domain of the VM configuration"
}

variable "migration_plan_strategies_resource_type" {
  default     = "CPU"
  type        = string
  description = "The type of resource"
 }

variable "migration_plan_strategies_strategy_type" {
  default     = "AS_IS"
  type        = string
  description = "The type of strategy used for migration."
 }

 variable "migration_plan_target_environments_subnet" {
  default     = "subnet"
  type        = string
  description = "OCID of the VM configuration subnet"
}

variable "migration_plan_target_environments_target_environment_type" {
  default     = "VM_TARGET_ENV"
  type        = string
  description = "The type of target environment."
}

variable "migration_plan_target_environments_vcn" {
  default     = "vcn"
  type        = string
  description = "OCID of the VM configuration VCN."
}

###########Migrations

variable "migration_display_name" {
  default     = "displayName"
  type        = string
  description = "Migrations Display Name"
}

###########Target Assets

variable "target_asset_is_excluded_from_execution" {
  default     = false
  type        = bool
  description = "A boolean indicating whether the asset should be migrated"
}

variable "target_asset_preferred_shape_type" {
  default     = "VM"
  type        = string
  description = "Preferred VM shape type that you provide"
}

variable "target_asset_type" {
  default     = "INSTANCE"
  type        = string
  description = "The type of target asset"
}

variable "target_asset_user_spec_agent_config_plugins_config_desired_state" {
  default     = "ENABLED"
  type        = string
  description = "Whether the plugin should be enabled or disabled."
}

variable "target_asset_user_spec_agent_config_plugins_config_name" {
  default     = "name"
  type        = string
  description = "The plugin name"
}


variable "target_asset_user_spec_preemptible_instance_config_preemption_action_type" {
  default     = "TERMINATE"
  type        = string
  description = "The Action type for the instance."
}


variable "target_asset_user_spec_source_details_source_type" {
  type        = string
  description = "The source type for the instance."
  default     = "bootvolume"
}

variable "boot_volume_ocid" {
  type        = string
  description = "The OCID of the boot volume used to boot the instance"
  default     = ""
}
