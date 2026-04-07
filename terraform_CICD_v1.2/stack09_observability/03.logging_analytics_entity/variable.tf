variable "region"{
    type        = string
    default     = ""
    description = "region name"
}
variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Log analytics entity"
        }
      freeformTags = {}
  }
}
variable "monitoring_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "monitoring_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "app_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "log_analytics_entity_entity_type_name"{
    type = string
    default = "Host (Linux)"
    description = "type name"
}
variable "log_analytics_entity_name"{
    type = string
    default = "Example_entity"
    description = "Entity name"
}
variable "log_analytics_entity_hostname"{
    type = string
    default = "aa.domainname.com"
    description = "Host name"
}
