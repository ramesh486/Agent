locals{
    compartment_ocid             = data.oci_identity_compartments.this.compartments[0].id
    user_topic_ocid              = data.oci_ons_notification_topics.user.notification_topics[0].topic_id 
    objectstorage_topic_ocid     = data.oci_ons_notification_topics.objectstorage.notification_topics[0].topic_id
}

