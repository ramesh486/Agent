
module "volume_group" {
  source                          = "./volume_group_module"
  tenancy_ocid                    = var.tenancy_ocid
  compartment_ocid                = var.compartment_ocid
  region                          = var.region
  volume_group_display_name       = var.volume_group_display_name
  volume_ocids                    = var.volume_ocids
  definedTags          = var.project_tag.definedTags
  freeformTags         = var.project_tag.freeformTags
}

