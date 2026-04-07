module oce_instance {

    source                               = "./content_module"
    oce_instance_admin_email              = var.oce_instance_admin_email
    compartment_ocid                      = local.compartment_ocid
    oce_instance_idcs_access_token        = var.oce_instance_idcs_access_token
    oce_instance_name                     = var.oce_instance_name
    oce_instance_object_storage_namespace = var.oce_instance_object_storage_namespace
    tenancy_ocid                          = var.tenancy_ocid
    tenancy_name                          = var.tenancy_name
    oce_instance_instance_access_type     = var.oce_instance_instance_access_type
    oce_instance_instance_license_type    = var.oce_instance_instance_license_type
    project_tag                           = var.project_tag   
 
}