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
# Security List Variables
# ----------------------------------------

variable "vcn_ocid" {}
variable "security_list_display_name" {}

variable "source_security_rules" {}
variable "destination_security_rules" {}