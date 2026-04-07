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
# Internet Gateway Variables
# ----------------------------------------

variable "vcn_ocid" {}
variable "intgw_display_name" {}
variable "intgw_enabled" {}