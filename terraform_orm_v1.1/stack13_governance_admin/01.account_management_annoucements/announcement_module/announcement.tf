data "oci_identity_availability_domains" "this" {
        compartment_id = var.compartment_ocid
      }

resource "oci_ons_notification_topic" "notification_topic" {
  compartment_id    = var.compartment_ocid
  name              = var.notification_topic_name
  }

data "oci_ons_notification_topics" "notification_topic" {
  compartment_id    = var.compartment_ocid
  id    		        = oci_ons_notification_topic.notification_topic.id
  name  		        = oci_ons_notification_topic.notification_topic.name
  state 		        = var.notification_topic_state
}

resource "oci_ons_subscription" "subscription_email" {
  compartment_id    = var.compartment_ocid
  endpoint          = var.subscription_endpoint
  protocol          = var.subscription_protocol
  topic_id          = oci_ons_notification_topic.notification_topic.id
}

data "oci_ons_subscriptions" "subscription" {
  compartment_id  = var.compartment_ocid
  topic_id        = oci_ons_subscription.subscription_email.topic_id
}


resource "oci_announcements_service_announcement_subscription" "announcement_subscription" {
  compartment_id  = var.compartment_ocid
  display_name    = var.announcement_subscription_display_name
  ons_topic_id    = oci_ons_notification_topic.notification_topic.id
  description     = var.announcement_subscription_description
  filter_groups {
    filters {
      type    = var.announcement_subscription_filter_groups_filters_type
      value   = var.announcement_subscription_filter_groups_filters_value
    }
  }
}

data "oci_announcements_service_announcement_subscriptions" "announcement_subscriptions" {
  compartment_id  = var.compartment_ocid
  display_name    = var.announcement_subscription_display_name
  id              = var.announcement_subscription_id
  state           = var.announcement_subscription_state
}
