resource "oci_monitoring_alarm" "alarm" {
    compartment_id                      = var.compartment_ocid
    destinations                        = [var.destination]
    display_name                        = var.alarm_display_name
    is_enabled                          = var.alarm_is_enabled
    metric_compartment_id               = var.alarm_metric_compartment_id
    namespace                           = var.alarm_namespace
    query                               = var.alarm_query
    severity                            = var.alarm_severity
    body                                = var.alarm_body
    message_format                      = var.alarm_message_format
    metric_compartment_id_in_subtree    = var.alarm_metric_compartment_id_in_subtree
    pending_duration                    = var.alarm_pending_duration
    repeat_notification_duration        = var.alarm_repeat_notification_duration
    resolution                          = var.alarm_resolution
}
