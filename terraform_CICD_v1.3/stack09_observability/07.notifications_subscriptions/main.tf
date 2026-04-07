#############################
# ObjectStorage Notifications 
##############################

module "export_oci_objectstorage_event_notifications" {
  source                         = "./notification_module"
  compartment_ocid               = local.compartment_ocid
  notification_topic_name        = var.oci_objectstorage_event_notifications_topic_name
  notification_topic_description = var.oci_objectstorage_event_notifications_topic_description
  project_tag                    = var.project_tag
}

#############################
# User Event Notifications 
##############################

module "export_oci_user_event_notifications" {
  source                         = "./notification_module"
  compartment_ocid               = local.compartment_ocid
  notification_topic_name        = var.oci_user_event_notifications_topic_name
  notification_topic_description = var.oci_user_event_notifications_topic_description
  project_tag                    = var.project_tag
}