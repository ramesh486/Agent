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
variable "region" {
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
        "Automation_Tags.Automation_ResourceType" = "CA_bundles"
        }
      freeformTags = {}
  }
}

variable "ca_bundle_ca_bundle_pem" {
    type        = string
    default     = ""
    description = "The PEM-encoded certificate bundle to be uploaded"
}
variable "description" {
    type        = string
    default     = "Demo"
    description = "A description for the resource"
}
variable "ca_bundle_name" {
    type        = string
    default     = "MyCAbundle" 
    description = "The name of the CA bundle"
}

