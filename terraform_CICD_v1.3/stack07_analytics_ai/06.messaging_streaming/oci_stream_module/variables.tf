variable "stream_display_name" {}
variable "stream_partitions" {}
variable "retention_in_hours" {}
variable "stream_pool_ocid" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

