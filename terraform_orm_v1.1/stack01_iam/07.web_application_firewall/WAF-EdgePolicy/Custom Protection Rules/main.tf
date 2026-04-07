
##############################
###  Custom protection rules
##############################

module "cpr" {
  source                               = "./cpr"
  compartment_ocid                     = var.compartment_ocid
  definedTags                          = var.project_tag.definedTags
  freeformTags                         = var.project_tag.freeformTags
  custom_protection_rule_template      = var.custom_protection_rule_template
  custom_protection_rule_description   = var.custom_protection_rule_description
  custom_protection_rule_display_name  = var.custom_protection_rule_display_name
}