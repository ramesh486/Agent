variable "region" {
  type = string
  description = "Enter the Region"
  default = ""
}

variable "tenancy_ocid" {
  type = string
  description = "Enter the Tenancy OCID"
  default = ""
}

variable compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable compartment_name {
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
        "Automation_Tags.Automation_ResourceType" = "IP_management"
        }
      freeformTags = {}
  }
}

variable "byoip_range_ocid" {
  type = string
  description = "BYOIP range ocid."
  default = ""
}

variable "public_ip_pool_cidr_block" {
  type = string
  description = "Public IP pool CIDR block."
  default = "10.0.0.0/24"

}

variable "public_ip_pool_display_name" {
  type = string
  description = "Enter the Name of public IP pool"
  default = "My_IP_Pool"

}