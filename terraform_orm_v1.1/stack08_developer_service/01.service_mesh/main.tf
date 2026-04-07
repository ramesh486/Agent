module test_mesh  {
source                            = "./Service_mesh_module"
mesh_certificate_authorities_ocid = var.mesh_certificate_authorities_ocid
compartment_ocid                  = var.compartment_ocid
mesh_display_name                 = var.mesh_display_name
mesh_mtls_minimum                 = var.mesh_mtls_minimum
}