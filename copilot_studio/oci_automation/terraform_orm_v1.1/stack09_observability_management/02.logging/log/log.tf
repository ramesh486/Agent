
resource "oci_logging_log" "test_log" {
  #Required
  
  display_name      = var.test_log_name
  log_group_id      = var.test_log_group_id
  log_type          = var.log_log_type.custom


#   defined_tags = {
#     "${var.tag_namespace1_name}.${var.tag2_name}" = var.defined_tags_value1
#  }
#   freeform_tags      = var.freeform_tags_value1
#   is_enabled         = "false"
#   retention_duration = "30"
}

data "oci_logging_logs" "test_logs" {
  #Required
  log_group_id = var.test_log_group_id

  #Optional
  display_name    = var.test_log_name
  log_type        = var.log_log_type.custom
  source_resource = var.log_source_resource
  source_service  = var.log_source_service
  state           = "ACTIVE"
}

