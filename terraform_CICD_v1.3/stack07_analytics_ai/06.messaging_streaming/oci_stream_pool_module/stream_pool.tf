
resource oci_streaming_stream_pool stream_pool {
  compartment_id      = var.compartment_ocid
  name                = var.stream_pool_name  
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
  kafka_settings {
    auto_create_topics_enable = var.auto_create_topics_enable
    log_retention_hours       = var.stream_pool_log_retention_hours
    num_partitions            = var.stream_pool_num_of_partitions
  }
  private_endpoint_settings {
    subnet_id         = var.subnet_ocid
  }
}
