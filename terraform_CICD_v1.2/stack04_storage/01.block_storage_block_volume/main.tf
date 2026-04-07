module "block_storage" {
  source                        = "./block_volume_module"  
  compartment_ocid              = local.compartment_ocid
  volume_display_name           = var.volume_display_name
  volume_is_auto_tune_enabled   = var.volume_is_auto_tune_enabled
  volume_size_in_gbs            = var.volume_size_in_gbs
  volume_vpus_per_gb            = var.volume_vpus_per_gb
  project_tag                   = var.project_tag
}