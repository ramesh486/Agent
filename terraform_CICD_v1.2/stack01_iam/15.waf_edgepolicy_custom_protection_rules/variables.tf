##############################
### Common Variables
##############################

variable "tenancy_ocid" {}

variable "security_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "security_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "region" {
  type         = string
  default      = "us-ashburn-1"
  description  = "Select the Region"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "CPR"
        }
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


