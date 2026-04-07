#################################################
# Common Variables
#################################################

variable compartment_ocid {}

variable "region" {}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "datasafe_private_endpoint"}
      freeformTags = {}
  }
}

#################################################
# DataSafe Private Endpoint Variables
#################################################
variable "data_safe_private_endpoint_display_name" {
	 type = string
     default = "Example_private_endpoint"
}

variable "data_safe_private_endpoint_description" {
	 type = string
     default = "private endpoint description"
}

variable "subnet_ocid" {}

variable "vcn_ocid" {}

variable "nsg_ocids" {
  type = list
  default = []
}
