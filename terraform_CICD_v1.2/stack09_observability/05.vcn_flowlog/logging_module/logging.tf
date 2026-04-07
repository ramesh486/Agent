resource oci_logging_log this {
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
  display_name        = var.logging_display_name
  is_enabled          = var.is_logging_enabled
  log_group_id        = var.log_group_ocid
  log_type            = var.log_type
  retention_duration  = var.log_retention_duration
  configuration {
    compartment_id    = var.compartment_ocid
    source {
      category        = var.logging_configuration_source_category
      resource        = var.logging_configuration_source_subnet_ocid
      service         = var.logging_configuration_source_service
      source_type     = var.logging_configuration_source_type
    }
  }
}