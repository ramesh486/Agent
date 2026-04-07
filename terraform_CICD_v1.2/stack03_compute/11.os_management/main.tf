module "osmanagement" {
    source                               = "./os_management_module"
    compartment_ocid                     = local.compartment_ocid
    managed_instance_group_display_name  = var.managed_instance_group_display_name
    managed_instance_group_description   = var.managed_instance_group_description
    project_tag                          = var.project_tag

}

module "software_source" {
    source                               = "./osmanagement_software_source_module"
    software_source_arch_type            = var.software_source_arch_type
    compartment_ocid                     = local.compartment_ocid
    software_source_display_name         = var.software_source_display_name
    project_tag                          = var.project_tag

   
}