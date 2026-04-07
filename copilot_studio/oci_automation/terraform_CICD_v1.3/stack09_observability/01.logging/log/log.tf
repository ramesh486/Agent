
resource "oci_logging_log" "test_log" {
  
  # compartment_id    = var.compartment_ocid
  display_name      = var.test_log_name
  log_group_id      = var.test_log_group_id
  log_type          = var.log_log_type.custom

}

data "oci_logging_logs" "test_logs" {
  
  log_group_id    = var.test_log_group_id
  display_name    = var.test_log_name
  log_type        = var.log_log_type.custom
  source_resource = var.log_source_resource
  source_service  = var.log_source_service
  state           = "ACTIVE"
}

