#####################################
# Common variables
#####################################

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
variable "region" {
    type        = string
    default     = ""
    description = "region"
}
variable "tenancy_ocid" {
    type        = string
    default     = ""
    description = "The OCID of the tenancy."
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "blockchain_platform"
        }
      freeformTags = {}
  }
}

#####################################
# Block Chain platform variables
#####################################

variable "blockchain_platform_compute_shape" {
    type        = string
    default     = "STANDARD"
    description = "Select the blockchain platform compute shape"
}
variable "blockchain_platform_display_name" {
    type        = string
    default     = "MyBlockchain"
    description = "Assign the display name"
}
variable "blockchain_platform_idcs_access_token" {
    type        = string
    default     = ""
    description = "Provide idcs access token"
}
variable "blockchain_platform_platform_role" {
    type        = string
    default     = "FOUNDER"
    description = "Select blockchain platform platform role"
}
