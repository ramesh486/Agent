# -----------------------
# Common Variables
# -----------------------

variable "tenancy_ocid" {
  type        = string
  description = "Target Tenancy OCID"
  default     = ""
}
variable "region" {
  type        = string
  description = "Region"
  default     = "us-ashburn-1"
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Secondary Domain"
        }
      freeformTags = {}
  }
}
# -----------------------
# Domain Variables
# -----------------------

variable "domain_display_name" {
  type        = string
  description = "Domain Display Name"
  default     = "SecondaryDomain"
}
variable "domain_description" {
  type        = string
  description = "Description of the Domain"
  default     = "Secondary Domain"
}

variable "domain_license_type" {
  type        = string
  description = "Choose the Domain License type"
  default     = "Free"
}

