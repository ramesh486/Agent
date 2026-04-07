module oci_jms_fleet {
  
  source                             = "./fleets_module"
  #Required
  compartment_ocid                   = var.compartment_ocid
  fleet_display_name                 = var.fleet_display_name
  fleet_log_group_ocid               = var.fleet_log_group_ocid
  fleet_inventory_log_ocid           = var.fleet_inventory_log_ocid
  #Optional
  fleet_description                  = var.fleet_description
  fleet_freeform_tags                = var.fleet_freeform_tags
  fleet_is_advanced_features_enabled = var.fleet_is_advanced_features_enabled
  fleet_state                        = var.fleet_state
  fleet_defined_tags                 = var.fleet_defined_tags
  fleet_display_name_contains        = var.fleet_display_name_contains
  
}

data "oci_jms_fleets" "example_fleets" {
  #Optional
  compartment_id                     = var.compartment_ocid
  display_name                       = var.fleet_display_name
  display_name_contains              = var.fleet_display_name_contains
  state                              = var.fleet_state
}

