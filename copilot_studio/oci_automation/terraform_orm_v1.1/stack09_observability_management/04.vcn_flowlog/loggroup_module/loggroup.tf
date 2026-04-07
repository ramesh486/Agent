resource "oci_logging_log_group" "log_group" {
	compartment_id  = var.compartment_ocid
	display_name    = var.log_group_display_name
	description     = var.log_group_description
}


