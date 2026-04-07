module "file_storage" {
  source                    = "./file_storage_module"  
  compartment_ocid          = var.compartment_ocid
  file_system_display_name  = var.file_system_display_name
  mount_target_display_name = var.mount_target_display_name
  export_path               = var.export_path
  project_tag               = var.project_tag
  subnet_ocid               = var.subnet_ocid
}


