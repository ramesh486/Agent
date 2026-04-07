## Common Variables

variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {}
    }
}

### Streaming Variables

variable "stream_pool_name" {
  type        = string
  default     = "test_stream_pool"
  description = "The name of the stream pool."
}
variable "auto_create_topics_enable" {
  type        = bool
  default     = true
  description = "Enable auto creation of topic on the server."
}
variable "stream_pool_log_retention_hours" {
  type        = number
  default     = 24
  description = "The number of hours to keep a log file before deleting it (in hours)" 
}
variable "stream_pool_num_of_partitions" {
  type        = number
  default     = 1
  description = "The default number of log partitions per topic."
}
variable "stream_display_name" {
  type        = string
  default     = "test_stream"
  description = "The name of the stream."
}
variable "stream_retention_in_hours" {
  type        = number
  default     = 24
  description = "The retention period of the stream, in hours."
}
variable "stream_partitions" {
  type        = number
  default     = 1
  description = "The number of partitions in the stream."
}
variable "vcn_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block for the VCN"
}
variable "vcn_display_name" {
  type        = string
  default     = "streamvcn"
  description = "Name for VCN"
}
variable "vcn_dns_label" {
  type        = string
  default     = "dnsvcn"
  description = "DNS label for for VCN"
}
variable "subnet_cidr_block" {
  type        = string
  default     = "10.0.0.0/24"
  description = "CIDR for subnet"
}