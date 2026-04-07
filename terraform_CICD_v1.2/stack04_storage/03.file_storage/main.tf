module "file_storage" {
  source                    = "./file_storage_module" 
  availability_domain       = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"] 
  compartment_ocid          = local.app_compartment_ocid
  file_system_display_name  = var.file_system_display_name
  project_tag               = var.project_tag
}

module "file_storage_mount_target" {
  source                    = "./mount_target_module" 
  availability_domain       = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"] 
  compartment_ocid          = local.app_compartment_ocid
  mount_target_display_name = var.mount_target_display_name
  project_tag               = var.project_tag
  subnet_ocid               = local.subnet_ocid
}

module "file_storage_export" {
  source                    = "./filestorage_export_module"
  mount_target_ocid         = module.file_storage_mount_target.file_storage_mount_target_ocid
  file_system_ocid          = module.file_storage.file_system_ocid 
  export_path               = var.export_path
  export_set_name           = var.export_set_name
}