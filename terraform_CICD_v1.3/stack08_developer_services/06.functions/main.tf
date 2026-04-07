######################################
# Application
######################################

module application {
  source                     = "./application_module"
  compartment_ocid           = local.app_compartment_ocid
  display_name               = var.display_name
  subnet_ocid                = local.subnet_ocid
  project_tag                = var.project_tag
}