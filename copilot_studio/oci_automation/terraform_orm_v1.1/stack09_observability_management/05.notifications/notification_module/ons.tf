resource "oci_ons_notification_topic" "notification_topic" {
    compartment_id  = var.compartment_ocid
    name            = var.notification_topic_name
    description     = var.notification_topic_description
    
}
