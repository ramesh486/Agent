resource "oci_oce_oce_instance" "test_oce_instance" {
    
    admin_email              = var.oce_instance_admin_email
    compartment_id           = var.compartment_ocid
    idcs_access_token        = var.oce_instance_idcs_access_token
    name                     = var.oce_instance_name
    object_storage_namespace = var.oce_instance_object_storage_namespace
    tenancy_id               = var.tenancy_ocid
    tenancy_name             = var.tenancy_name
    instance_access_type     = var.oce_instance_instance_access_type
    instance_license_type    = var.oce_instance_instance_license_type
  
}