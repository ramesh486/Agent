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
variable "drg_ocid" {}
variable "vcn_ocid" {}
variable "oci_core_drg_attachment_display_name" {}