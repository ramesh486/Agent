module "test_network_source" {
  source                             = "./network_source_module"
  region                             = var.region
  compartment_id                     = var.compartment_id
  network_source_description         = var.network_source_description
  network_source_name                = var.network_source_name
  project_tag                        = var.project_tag

}