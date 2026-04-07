### Common Variables ###


variable "region" {
    type = string
    default = "us-ashburn-1"
    description = "Region (us-ashburn-1) to deploy the DRG"    
}

variable "tenancy_ocid"{
    type = string
    default =  ""
    description = "Tenancy ID (us-ashburn-1) to deploy the DRG"    
}

variable "compartment_name" {
    type = string
    default = ""
    description = "Target Compartment Name to deploy the DRG"
}
variable "compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

###  DRG Variables ### 

variable "network_drg_display_name" {
    default = "prod_hub_drg"
    type = string
    description = "Name of the DRG"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Drg"
        }
      freeformTags = {}
  }
}
