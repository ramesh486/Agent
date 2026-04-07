locals{
    monitoring_compartment_ocid               = data.oci_identity_compartments.monitoring_compartment.compartments[0].id
    oci_objectstorage_event_notifications_topic_ocid   = data.oci_ons_notification_topics.oci_objectstorage_event_notifications.notification_topics[0].topic_id
}
