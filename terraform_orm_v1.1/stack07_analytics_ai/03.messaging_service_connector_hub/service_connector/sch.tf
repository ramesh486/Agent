resource oci_sch_service_connector this {
  compartment_id  = var.service_connector_compartment_ocid
  defined_tags    = var.project_tag.definedTags
  description     = var.service_connector_description
  display_name    = var.service_connector_display_name
  freeform_tags   = var.project_tag.freeformTags
  source {
    kind = var.source_kind
    log_sources {
      compartment_id = var.logging_source_compartment_ocid
      log_group_id   = var.log_group_id
    }
  }
  target {
    kind                = var.target_kind
    bucket              = var.object_storage_bucket_name
    object_name_prefix  = var.object_name_prefix
  }
}