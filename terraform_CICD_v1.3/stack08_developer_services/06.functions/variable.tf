#####################################
# Common Variables
#####################################

variable "compartment_ocid" {
  type          = string
  description   = "The OCID (Oracle Cloud Identifier) of the compartment"
  default       = ""
}
variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}
variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}

variable "app_compartment_id_in_subtree" {
    type         = bool
    default      = true
    description  = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type         = string
    default      = ""
    description  = "Compartment Name to deploy"
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

variable "subnet_display_name" {
  type          = string
  default       = ""
  description   = "The subnet in which the application is deployed"
}

variable "project_tag" {
  type          = map
  description   = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Application"
        }
      freeformTags = {}
  }
}
#####################################
# Function Variables
#####################################

variable "display_name" {
  description = "The display name of an entity or resource."
  type        = string
  default     = "Example_application"
}



