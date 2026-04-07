# ----------------------------------------
# Common Variables
# ----------------------------------------

variable compartment_ocid {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

# ----------------------------------------
# VCN Variables
# ----------------------------------------

variable "vcn_display_name" {}

variable "vcn_dns_label" {}

variable "vcn_cidr_block" {}