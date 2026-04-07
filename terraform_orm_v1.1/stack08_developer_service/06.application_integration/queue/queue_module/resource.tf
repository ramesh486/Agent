resource "oci_identity_tag_namespace" "tag-namespace1" {
  compartment_id = var.compartment_ocid
  description    = var.tag_namespace_description
  name           = var.tag_namespace_name
}

resource "oci_identity_tag" "tag1" {
  description      = var.tag_description
  name             = var.tag_name
  tag_namespace_id = oci_identity_tag_namespace.tag-namespace1.id
}

resource "oci_queue_queue" "test_queue1" {
  compartment_id          = var.compartment_ocid
  display_name            = var.queue_display_name
  retention_in_seconds    = var.queue_retention_in_seconds
  timeout_in_seconds      = var.queue_timeout_in_seconds
  visibility_in_seconds   = var.queue_visibility_in_seconds
}