####################
# Common Variables
####################

variable "tenancy_ocid" {
  default     = "" 
  type        = string
  description = "Tenancy OCID"
}

variable "monitoring_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "monitoring_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy the DRG"
}

variable "region" { 
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
        "Automation_Tags.Automation_ResourceType" = "events_service"
        }
      freeformTags = {}
  }
}


################################
#  IAM User Rules  Variables 
#################################

variable iam_user_rule_actions_actions_action_type {
    type        = string
    description = " The action to perform if the condition in the rule matches an event" 
    default     = "ONS"   
}
variable iam_user_rule_actions_actions_description {
    type        = string
    description = "A string that describes the details of the action" 
    default     = "Send to an Oracle Notification Service topic"
}
variable iam_user_rule_actions_actions_is_enabled {
    type        = string
    description = " Whether or not this action is currently enabled" 
    default     = "true"
}
variable iam_user_rule_condition {
    type        = string
    description = "Description of the rule" 
    default     = "{\"eventType\":[\"com.oraclecloud.identitycontrolplane.createuser\",\"com.oraclecloud.identitycontrolplane.deleteuser\",\"com.oraclecloud.identitycontrolplane.updateuser\",\"com.oraclecloud.identitycontrolplane.updateusercapabilities\",\"com.oraclecloud.identitycontrolplane.updateuserstate\"]}"
}
variable iam_user_rule_description {
    type        = string
    description = "A string that describes the details of the rule"
    default     = "Rule for  IAM User"
}
variable iam_user_rule_display_name {
    type        = string
    description = "Name of the Rule" 
    default     = "iam_user_rule"
}
variable iam_user_rule_is_enabled {
    type        = string
    description = "Whether or not this rule is currently enabled" 
    default     ="true"
}
variable topic_display_name_user {
  type          = string
  default       = "oci_user_event_notifications"
  description   = "Name of the topic in which the rule is associated"
} 



################################
#  ObjectStorage Rules Variables 
#################################

variable objectstorage_bucket_create_rule_actions_actions_action_type {
    type        = string
    description = " The action to perform if the condition in the rule matches an event" 
    default     = "ONS"   
}
variable objectstorage_bucket_create_rule_actions_actions_description {
    type        = string
    description = "A string that describes the details of the action" 
    default     = "Send to an Oracle Notification Service topic"
}
variable objectstorage_bucket_create_rule_actions_actions_is_enabled {
    type        = string
    description = " Whether or not this action is currently enabled" 
    default     = "true"
}
variable objectstorage_bucket_create_rule_condition {
    type        = string
    description = "Description of the rule" 
    default     = "{\"eventType\":[\"com.oraclecloud.objectstorage.updatebucket\",\"com.oraclecloud.objectstorage.createbucket\"],\"data\":{\"additionalDetails\":{\"publicAccessType\":\"NoPublicAccess\"}}}"
}
variable objectstorage_bucket_create_rule_description {
    type        = string
    description = "A string that describes the details of the rule"
    default     = "Rule for  Object Storage"
}
variable objectstorage_bucket_create_rule_display_name {
    type        = string
    description = "Name of the Rule" 
    default     = "objectstorage_bucket_create_rule"
}
variable objectstorage_bucket_create_rule_is_enabled {
    type        = string
    description = "Whether or not this rule is currently enabled" 
    default     ="true"
}
variable topic_display_name_objectstorage {
  type        = string
  default     = "oci_objectstorage_event_notifications"
  description = "Name of the topic in which the rule is associated"
}



