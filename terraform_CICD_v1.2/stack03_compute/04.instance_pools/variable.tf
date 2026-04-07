
variable "tenancy_ocid" {
  type    = string
  default = ""
  description = "give here tenancy ocid"

}

variable "region" {
  type    = string
  default = "us-ashburn-1"
  description = "give here region"
}

variable "app_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}
variable "network_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Instance_pool"
        }
      freeformTags = {}
  }
}
# ----------------------------------------
#  instance Variables
# ----------------------------------------

variable subnet_display_name{
  type = string
  default = ""
  description = "Name of the Subnet"
}


# ----------------------------------------
#  instance pool Variables
# ----------------------------------------
variable "instance_configuration_display_name" {
  type = string
  default = ""
  description = "Get this name, after running the Instance Config Stack"
}

variable "instance_pool_size" {
  type = number
  default = "2"
  description = "instance pool size"
}

variable "instance_pool_state" {
  type = string
  default = "RUNNING"
  description = "instance pool state"
}

variable "instance_pool_display_name" {
  type = string
  default = "TestInstancePool"
  description = "instance pool display name"
}
