variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
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
        "Automation_Tags.Automation_ResourceType" = "Disaster Recovery"
        }
      freeformTags = {}
  }
}

variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}
variable "dr_protection_group_display_name"{
    type        = string
    default     = "DR_Test"
    description = "The display name for the DR protection group"
}
variable "dr_protection_group_log_location_bucket"{
    type        = string
    default     = "Mybucket"
    description = "The name of the Object Storage bucket where logs related to the DR protection group will be stored"
}
variable "dr_protection_group_log_location_namespace"{
    type        = string
    default     = "axuezfqioxiw"
    description = "The Object Storage namespace where the bucket specified is located"
}
variable "dr_protection_group_association_role"{
    type        = string
    default     = "STANDBY"
    description = "The role of the DR protection group in the DR association"
}
variable "dr_protection_group_members_member_type"{
    type        = string
    default     = "VOLUME_GROUP"
    description = "The type of the member in the DR protection group"
}
variable "member_ocid"{
    type        = string
    default     = "ocid1.volumegroup.oc1..."
    description = "The OCID of the member in the DR protection group"
}

