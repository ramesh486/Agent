#####################################
# Common Variables
#####################################

variable tenancy_ocid {
    type        = string
    default     = ""
    description = "Tenancy OCID"
}

variable "region" {
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
}

variable "app_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

#####################################
# catalog_private_endpoint
#####################################

variable "catalog_private_endpoint_display_name" {
    type        = string
    default     = "Example_endpoint"
    description = "The display name for the catalog private endpoint."
}

variable "catalog_private_endpoint_dns_zones" {
    type        = list(string)
    default     = ["nptrustsn.nonprodhubvcn.oraclevcn.com"]
    description = "The list of DNS zones for the catalog private endpoint."
}

variable "subnet_display_name" {
  type        = string
  default     = ""
  description = "The subnet in which the application is deployed"
}

###################################################
# data catalog
###################################################


variable "catalog_display_name" {
    type        = string
    default     = "Example_catalog"
    description = "The display name for the data catalog."
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "data_catalog"
        }
      freeformTags = {}
  }
}
