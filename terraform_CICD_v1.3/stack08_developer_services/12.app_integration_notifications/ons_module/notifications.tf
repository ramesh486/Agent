resource "oci_ons_notification_topic" "test_notification_topic" {
  compartment_id   = var.compartment_ocid
  name             = var.notification_topic_name
  defined_tags     = var.project_tag.definedTags
  freeform_tags    = var.project_tag.freeformTags  

}
resource "oci_ons_subscription" "test_subscription_email" {
  compartment_id  = var.compartment_ocid
  endpoint        = var.subscription_endpoint
  protocol        = var.subscription_protocol
  topic_id        = oci_ons_notification_topic.test_notification_topic.id
  defined_tags    = var.project_tag.definedTags
  freeform_tags   = var.project_tag.freeformTags
}
