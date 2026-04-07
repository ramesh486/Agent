########################################
# OCI objectStorage High critical
########################################

module "export_oci_objectstorage_alarm" { 
  source                                    = "./alarm_module"
  compartment_ocid                          = local.monitoring_compartment_ocid
  destination                               = local.oci_objectstorage_event_notifications_topic_ocid
  alarm_display_name                        = var.alarm_objectstorage_alarm_display_name
  alarm_severity                            = var.alarm_objectstorage_alarm_severity
  alarm_body                                = var.alarm_objectstorage_alarm_body
  alarm_metric_compartment_id               = local.monitoring_compartment_ocid
  alarm_metric_compartment_id_in_subtree    = var.alarm_metric_compartment_id_in_subtree
  alarm_namespace                           = var.alarm_objectstorage_alarm_namespace
  alarm_query                               = var.alarm_objectstorage_alarm_query
  alarm_pending_duration                    = var.alarm_objectstorage_alarm_pending_duration
  alarm_repeat_notification_duration        = var.alarm_objectstorage_alarm_repeat_notification_duration
  alarm_resolution                          = var.alarm_objectstorage_alarm_resolution
  alarm_message_format                      = var.alarm_objectstorage_alarm_message_format
  alarm_is_enabled                          = var.alarm_objectstorage_alarm_is_enabled
  project_tag                               = var.project_tag
}

