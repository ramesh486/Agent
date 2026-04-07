
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
    nsg_ids           = [oci_core_network_security_group.stream_nsg.id,]
    subnet_id         = oci_core_subnet.stream_subnet.id
  }
}

resource oci_streaming_stream oci_stream {
  defined_tags       = var.project_tag.definedTags
  freeform_tags      = var.project_tag.freeformTags
  name               = var.stream_display_name
  partitions         = var.stream_partitions
  retention_in_hours = var.retention_in_hours
  stream_pool_id     = oci_streaming_stream_pool.stream_pool.id
}

resource "oci_core_vcn" "stream_vcn" {
  cidr_block        = var.vcn_cidr_block 
  compartment_id    = var.compartment_ocid
  display_name      = var.vcn_display_name 
  dns_label         = var.vcn_dns_label 
}

resource "oci_core_subnet" "stream_subnet" {
  cidr_block        = var.subnet_cidr_block 
  compartment_id    = var.compartment_ocid
  vcn_id            = oci_core_vcn.stream_vcn.id
}

resource "oci_core_network_security_group" "stream_nsg" {
  compartment_id    = var.compartment_ocid
  vcn_id            = oci_core_vcn.stream_vcn.id
}