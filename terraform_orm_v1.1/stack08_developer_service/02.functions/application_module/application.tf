resource oci_functions_application this{
  compartment_id = var.compartment_ocid
  display_name   = var.display_name
  subnet_ids     = var.subnet_ocid
}