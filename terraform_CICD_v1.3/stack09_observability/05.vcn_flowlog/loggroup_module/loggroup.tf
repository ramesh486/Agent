resource "oci_logging_log_group" "log_group" {
	compartment_id  = var.compartment_ocid
	display_name    = var.log_group_display_name
	defined_tags    = var.project_tag.definedTags
	description     = var.log_group_description
	freeform_tags   = var.project_tag.freeformTags
}