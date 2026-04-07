variable "compartment_ocid" {}
variable "dr_protection_group_display_name" {}
variable "dr_protection_group_log_location_bucket" {}
variable "dr_protection_group_log_location_namespace" {}
variable "dr_protection_group_association_role" {}
variable "dr_protection_group_members_member_type" {}
variable "member_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}




