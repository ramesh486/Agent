data "oci_identity_compartments" "monitoring_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.monitoring_compartment_id_in_subtree
    name                         = var.monitoring_compartment_name
}

data "oci_identity_compartments" "app_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.app_compartment_id_in_subtree
    name                         = var.app_compartment_name
}

# data "oci_objectstorage_namespace" "test_namespace" {
#     compartment_id = var.compartment_ocid
# }


data "oci_ons_notification_topics" "oci_objectstorage_event_notifications" {
    compartment_id     = local.monitoring_compartment_ocid
    	filter {
        name           = "name"
        values         = ["${var.topic_dispaly_name_oci_objectstorage_event_notifications}"]
    }
}

     