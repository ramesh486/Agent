variable "tenancy_ocid" {}
variable "region" {}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Volume Group"
        }
      freeformTags = {}
  }
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
variable "volume_group_display_name" {
  type = string
  default = "Test Volume Group"
  description = "Name of the volume group"
}

variable "volume_ocid" {
  type = list(string)
  default = ["ocid1.volume.oc1.iad.abuwcljsrbmc73sttcqep7hexydfnz3xfmu54nbfqn4w3vxvlol3tt3yloxq"]
  description = "ocids of the volume"
}




