module test_mesh  {
source                            = "./Service_mesh_module"
compartment_ocid                  = local.compartment_ocid
mesh_display_name                 = var.mesh_display_name
mesh_mtls_minimum                 = var.mesh_mtls_minimum
project_tag                       = var.project_tag
mesh_certificate_authorities_ocid = var.mesh_certificate_authorities_ocid

}