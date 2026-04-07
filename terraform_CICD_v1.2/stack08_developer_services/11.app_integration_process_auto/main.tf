module "opa_instance" {
  source            = "./opa_instance_module"
  region            = var.region
  compartment_ocid  =   local.compartment_ocid
  consumption_model = var.consumption_model
  display_name      = var.display_name
  idcs_access_token = var.idcs_access_token
  metering_type     = var.metering_type
  shape_name        = var.shape_name
  project_tag       = var.project_tag
}
