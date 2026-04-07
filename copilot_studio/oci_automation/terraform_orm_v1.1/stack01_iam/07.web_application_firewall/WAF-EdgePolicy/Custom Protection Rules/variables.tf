##############################
### Common Variables
##############################

variable "tenancy_ocid" {}
variable "compartment_ocid" {}

variable "region" {
  type         = string
  default      = "us-ashburn-1"
  description  = "Select the Region"
}

variable "project_tag" {
  type        = map
  description = "Tags to be Assigned to the Resources"
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

########################################
### Custom protection rules Variables
########################################

variable "custom_protection_rule_template" {
  type         = string
  default      = "SecRule REQUEST_URI / \"phase:2,   t:none,   capture,   msg:'Custom (XSS) Attack. Matched Data: %%%{TX.0}   found within %%%{MATCHED_VAR_NAME}: %%%{MATCHED_VAR}',   id:{{id_1}},   ctl:ruleEngine={{mode}},   tag:'Custom',   severity:'2'\""
  description  = "The template text of the custom protection rule."
}

variable "custom_protection_rule_description" {
  type         = string
  default      = "Custom Protection Rule"
  description  = "A description for the Custom Protection rule."
}

variable "custom_protection_rule_display_name" {
  type         = string
  default      = "custom_protection_rule"
  description  = "Display name for the custom protection rule."
}


