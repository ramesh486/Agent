####################
# Common Variables
####################

variable "tenancy_ocid" {
  default     = "" 
  type        = string
  description = "Tenancy OCID"
}

variable compartment_id_in_subtree {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable compartment_name {
    type        = string
    default     = "monitoring"
    description = "Compartment Name to deploy the Alarms"
}

variable compartment_name_gen_compartment {     
    type = string
    description = "The name of the compartment containing the metric being evaluated by the alarm"
    default = "gen_compartment"
} 

variable compartment_id_in_subtree_gen_compartment {
    type = bool
    description = "Compartment ID in Subtree"
    default = true
}

variable region { 
  default     = "us-ashburn-1" 
  type        = string
  description = "Select the Region"
}

#######################################
# OCI objectStorage High critical
########################################

variable alarm_objectstorage_alarm_display_name {
    type = string
    description = "Name for the alarm"
    default = "objectstorage_alarm"
}
variable alarm_objectstorage_alarm_severity {
    type = string
    default = "critical"
    description = "Severity of the alarm"
}
variable alarm_objectstorage_alarm_body {
    type = string
    description = "Content of the notification delivered."
    default = "number of objects"
} 
variable alarm_objectstorage_alarm_namespace  {         
    type = string
    description = "The source service or application emitting the metric that is evaluated by the alarm"
    default = "oci_objectstorage"
}
variable alarm_objectstorage_alarm_query {
    type = string
    description = "The Monitoring Query Language (MQL) expression to evaluate for the alarm"
    default = "ObjectCount[1m]{resourceDisplayName = bucket}.count()"
}
variable alarm_objectstorage_alarm_pending_duration {
    type = string
    description = "The period of time that the condition defined in the alarm must persist before the alarm state changes"
    default = "PT2M"
}
variable alarm_objectstorage_alarm_repeat_notification_duration {
    type = string
    description = "The frequency at which notifications are re-submitted, if the alarm keeps firing without interruption"
    default = "PT1H"
}
variable alarm_objectstorage_alarm_resolution  {
    type = string
    description = "The time between calculated aggregation windows for the alarm"
    default ="1m"
}
variable alarm_objectstorage_alarm_message_format {
    type = string
    description = "The format to use for notification messages sent from this alarm"
    default = "ONS_OPTIMIZED"
} 
variable alarm_objectstorage_alarm_is_enabled {
    type = bool
    description = "Whether the alarm is enabled"
    default = "true"
}
variable topic_dispaly_name_oci_objectstorage_event_notifications {
  type = string
  default = "oci_objectstorage_event_notifications"
  description = "Name of the topic in which the alarm is associated"
}
