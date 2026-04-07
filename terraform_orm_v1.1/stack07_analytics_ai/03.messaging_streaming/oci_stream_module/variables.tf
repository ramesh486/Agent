variable "compartment_ocid" {}

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
variable "auto_create_topics_enable" {}

variable "stream_pool_log_retention_hours" {}

variable "stream_pool_num_of_partitions" {}

variable "stream_pool_name" {}

variable "stream_display_name" {}

variable "stream_partitions" {}

variable "retention_in_hours" {}

variable "vcn_cidr_block" {}

variable "vcn_display_name" {}

variable "vcn_dns_label" {}

variable "subnet_cidr_block" {
  
}







