module application {
  
  source                     = "./application_module"
  compartment_ocid           = var.compartment_ocid
  display_name               = var.display_name
  subnet_ocid                = local.subnet_ocid

}