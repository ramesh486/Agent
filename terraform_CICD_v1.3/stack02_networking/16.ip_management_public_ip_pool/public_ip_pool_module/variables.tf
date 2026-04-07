variable "region" { }

variable "tenancy_ocid" { }
variable "public_ip_pool_display_name" { }

variable "compartment_ocid" { }

variable "byoip_range_ocid" { }

variable "public_ip_pool_cidr_block" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


