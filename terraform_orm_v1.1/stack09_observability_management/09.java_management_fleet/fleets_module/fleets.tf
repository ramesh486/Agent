resource "oci_jms_fleet" "example_fleet" {
  #Required
  compartment_id = var.compartment_ocid
  display_name   = var.fleet_display_name
  inventory_log {
    log_group_id = var.fleet_log_group_ocid
    log_id       = var.fleet_inventory_log_ocid
  }
  #Optional
  description    = var.fleet_description
  freeform_tags  = var.fleet_freeform_tags
}