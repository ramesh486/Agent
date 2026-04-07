####commom variables#####
variable "region" {
  type = string
  description = "region in which to launch instances."
  default = "us-ashburn-1"
}

variable "tenancy_ocid" {
  type = string
  description = "tenancy OCID in which to launch instances."
  default = ""
}

variable "compartment_id_in_subtree" {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable "compartment_name" {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Capacity_reservation"
        }
      freeformTags = {}
  }
}

variable "instance_count" {
  type = string
  description = "number of instances to launch."
  default = "1"
}

variable "capacity_reservation_display_name" {
  type = string
  default = "capacity_reservation"
  description = "capacity_reservation_display_name"
}

variable "instance_shape" {
  type = string
  default = "VM.Standard2.1"
  description = "instance shape"
}
