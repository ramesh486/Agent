data "oci_identity_compartments" "this" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.compartment_id_in_subtree
    name                         = var.compartment_name
}

data "oci_identity_compartments" "gen_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.compartment_id_in_subtree_gen_compartment
    name                         = var.compartment_name_gen_compartment
}


data "oci_ons_notification_topics" "oci_objectstorage_event_notifications" {
    compartment_id     = local.compartment_ocid
    	filter {
        name           = "name"
        values         = ["${var.topic_dispaly_name_oci_objectstorage_event_notifications}"]
    }
}

     