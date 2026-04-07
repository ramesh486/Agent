variable "compartment_ocid" {}

variable "stream_pool_name" {}


variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
variable "subnet_ocid" {}

#variable "nsg_ocid" {}

variable "auto_create_topics_enable" {}

variable "stream_pool_log_retention_hours" {}

variable "stream_pool_num_of_partitions" {}
