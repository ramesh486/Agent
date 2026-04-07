#####################
## volume group
#####################
module "volume_group" {
  source                          = "./volume_group_module"
  tenancy_ocid                    = var.tenancy_ocid
  compartment_ocid                = local.compartment_ocid
  region                          = var.region
  volume_group_display_name       = var.volume_group_display_name
  volume_ocid                     = var.volume_ocid
  definedTags                     = var.project_tag.definedTags
  freeformTags                    = var.project_tag.freeformTags
}

