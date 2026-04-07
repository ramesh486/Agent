variable "region" { }

variable "tenancy_ocid" { }

variable "ms_display_name" { }

variable "media_workflow_tasks_key" { }

variable "media_workflow_tasks_parameters" { }

variable "media_workflow_tasks_type" { }

variable "media_workflow_tasks_version" { }

variable "compartment_ocid" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
