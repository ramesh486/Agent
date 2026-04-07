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
    default     = ""
    description = "Compartment Name to deploy the DRG"
}

variable region { 
  default     = "" 
  type        = string
  description = "Select the Region"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter"   = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Notification"
        }
      freeformTags = {}
  }
}

#############################
# ObjectStorage Notifications
#############################

variable oci_objectstorage_event_notifications_topic_name {
    type        = string
    default     = "oci_objectstorage_event_notifications"
    description = "The name of the topic being created"
}
variable oci_objectstorage_event_notifications_topic_description {
    type        = string
    description = "The description of the topic being created."
    default     = "OCI ObjectStorage Event  Notifications"
}

###########################
#  User Notifications
###########################

variable oci_user_event_notifications_topic_name {
    type        = string
    default     = "oci_user_event_notifications"
    description = "The name of the topic being created."
}
variable oci_user_event_notifications_topic_description {
    type        = string
    description = "The description of the topic being created."
    default     = "OCI User Event Notifications"
}