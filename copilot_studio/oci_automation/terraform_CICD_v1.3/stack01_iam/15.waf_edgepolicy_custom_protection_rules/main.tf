
##############################
###  Custom protection rules
##############################

module "cpr" {
  source                               = "./cpr"
  compartment_ocid                     = local.security_compartment_ocid 
  project_tag                          = var.project_tag
  custom_protection_rule_template      = var.custom_protection_rule_template
  custom_protection_rule_description   = var.custom_protection_rule_description
  custom_protection_rule_display_name  = var.custom_protection_rule_display_name
}