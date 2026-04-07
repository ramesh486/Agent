module "custom_images" {
  source                     = "./custom_images_module"
  tenancy_ocid               = var.tenancy_ocid
  region                     = var.region
  compartment_ocid           = var.compartment_ocid
  instance_ocid              = var.instance_ocid
  launch_mode                = var.launch_mode 
  image_timeout_create       = var.image_timeout_create 
}