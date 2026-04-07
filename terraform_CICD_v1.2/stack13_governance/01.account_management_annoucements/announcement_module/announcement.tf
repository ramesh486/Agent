resource "oci_ons_notification_topic" "notification_topic" {
  compartment_id    = var.compartment_ocid
  name              = var.notification_topic_name
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
  }

resource "oci_ons_subscription" "subscription_email" {
  compartment_id    = var.compartment_ocid
  endpoint          = var.subscription_endpoint
  protocol          = var.subscription_protocol
  topic_id          = var.topic_ocid
}

resource "oci_announcements_service_announcement_subscription" "announcement_subscription" {
  compartment_id  = var.compartment_ocid
  display_name    = var.announcement_subscription_display_name
  ons_topic_id    = var.topic_ocid
  description     = var.announcement_subscription_description
  defined_tags    = var.project_tag.definedTags
  freeform_tags   = var.project_tag.freeformTags
  filter_groups {
    filters {
      type    = var.announcement_subscription_filter_groups_filters_type
      value   = var.announcement_subscription_filter_groups_filters_value
    }
  }
}

