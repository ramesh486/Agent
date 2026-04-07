module "domain" {
  source               = "./domain_module"
  compartment_ocid     = var.tenancy_ocid
  domain_display_name  = var.domain_display_name
  domain_description   = var.domain_description
  domain_home_region   = var.region
  domain_license_type  = var.domain_license_type
  definedTags          = var.project_tag.definedTags
  freeformTags         = var.project_tag.freeformTags
}
