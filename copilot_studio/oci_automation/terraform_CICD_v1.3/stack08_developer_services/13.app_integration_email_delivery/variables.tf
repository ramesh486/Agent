#####################################
# Common variables
#####################################

variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy ocid"  
  default     = "" 
}
variable "region" {
  type        = string
  description = "Enter Region"  
  default     = "" 
}
variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name"
 }

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "app_integration_email_delivery"
        }
      freeformTags = {}
  }
}
#####################################
# Email Delivery
#####################################

variable "sender_email_address" {
  type        = string
  description = "Enter sender email address"  
  default     = "reemayg99@gmail.com" 
}

variable "email_domain_name" {
  type        = string
  description = "Enter email domain name"  
  default     = "domain.com" 
}   
variable "dkim_selector" {
     type        = string
  description = "Enter dkim selector"  
  default     = "" 
}
