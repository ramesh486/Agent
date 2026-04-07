variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}
variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}
variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name"
 }

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "app_dependency_mgmt"
        }
      freeformTags = {}
  }
}

variable "knowledge_base_display_name" {
    type        = string
    default     = "Example_knowledge"
    description = "Specifies the display name for the knowledge base."
}