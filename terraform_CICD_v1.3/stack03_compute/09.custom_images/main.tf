###################
### Custom images
###################

module "custom_images" {
  source                     = "./custom_images_module"
  tenancy_ocid               = var.tenancy_ocid
  region                     = var.region
  compartment_ocid           = local.app_compartment_ocid
  instance_ocid              = local.instance_ocid
  launch_mode                = var.launch_mode 
  image_timeout_create       = var.image_timeout_create 
  project_tag                = var.project_tag
}
