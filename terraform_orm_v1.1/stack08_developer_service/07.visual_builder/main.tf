module "visual_builder" {
  source                        = "./visual_builder_module"
  compartment_ocid              = var.compartment_ocid
  display_name                  = var.display_name
  is_visual_builder_enabled     = var.is_visual_builder_enabled
  idcs_open_id                  = var.idcs_open_id
  node_count                    = var.node_count 
  vb_instance_consumption_model = var.vb_instance_consumption_model
  custom_endpoint_host_name     = var.custom_endpoint_host_name
}
