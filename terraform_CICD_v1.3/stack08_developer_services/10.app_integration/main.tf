#####################################
# Integration Instance
#####################################

module "integration_instance_module" {
  source                    = "./integration_instance_module"
  compartment_ocid          =   local.compartment_ocid
  consumption_model         =   var.consumption_model
  display_name              =   var.display_name
  idcs_at                   =   var.idcs_at
  integration_instance_type =   var.integration_instance_type
  is_byol                   =   var.is_byol
  is_file_server_enabled    =   var.is_file_server_enabled
  is_visual_builder_enabled =   var.is_visual_builder_enabled
  message_packs             =   var.message_packs
  project_tag               =   var.project_tag
}