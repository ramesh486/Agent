variable compartment_ocid {} 
variable subnet_ocid {}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable nlb_display_name {}
variable is_private {}
variable nlb_ip_version {}

### END