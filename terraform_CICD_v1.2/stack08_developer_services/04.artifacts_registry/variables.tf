# ------------------------------------
# Common Variables
# ------------------------------------


variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Artifact_registry"
        }
      freeformTags = {}
  }
}

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}
variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy the resource"
}


# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "artifacts_repository_display_name" {
    type        = string
    default     = "Artifacts_repository"
    description = "The display name for the artifacts repository."
}

variable "artifacts_repository_description" {
    type        = string
    default     = "description of the artifacts repository"
    description = "The description of the artifacts repository."
}

variable "artifacts_repository_type" {
    type        = string
    default     = "GENERIC"
    description = "The type of the artifacts repository."
}

variable "artifacts_repository_is_immutable" {
    type        = bool
    default     = false
    description = "Set to true if the artifacts repository should be immutable, or false if it can be modified."
}
