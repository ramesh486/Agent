variable "compartment_ocid" {}
variable custom_protection_rule_template {}
variable custom_protection_rule_description {}
variable custom_protection_rule_display_name {}
variable "project_tag" {
  type    = map
  default = {
    freeformTags = {}
    definedTags = {}
  }
}
