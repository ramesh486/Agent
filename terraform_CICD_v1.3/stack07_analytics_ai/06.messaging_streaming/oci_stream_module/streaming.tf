resource oci_streaming_stream oci_stream {
  defined_tags       = var.project_tag.definedTags
  freeform_tags      = var.project_tag.freeformTags
  name               = var.stream_display_name
  partitions         = var.stream_partitions
  retention_in_hours = var.retention_in_hours
  stream_pool_id     = var.stream_pool_ocid
}
