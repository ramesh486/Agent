data "oci_ons_notification_topics" "user" {
    compartment_id = local.monitoring_compartment_ocid
    	filter {
        name           = "name"
        values         = ["${var.topic_display_name_user}"]
        
    }
}
data "oci_ons_notification_topics" "objectstorage" {
    compartment_id = local.monitoring_compartment_ocid
    	filter {
        name           = "name"
        values         = ["${var.topic_display_name_objectstorage}"]
    }
}

data "oci_identity_compartments" "monitoring_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.monitoring_compartment_id_in_subtree
    name                         = var.monitoring_compartment_name
}
