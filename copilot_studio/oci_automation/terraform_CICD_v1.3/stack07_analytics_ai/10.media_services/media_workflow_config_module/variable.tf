
variable "compartment_ocid" { }
variable "display_name" { }
variable "media_workflow_configuration_parameters" { }
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
