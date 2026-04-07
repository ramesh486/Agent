module "analytics" {
  
  source                = "./analytics_module"
	tenancy_ocid          = var.tenancy_ocid
	region                = var.region
  compartment_ocid      = local.compartment_ocid
  description           = var.description
  feature_set           = var.feature_set
  license_type          = var.license_type  
  capacity_type         = var.capacity_type
  capacity_value        = var.capacity_value 
  name                  = var.name
  state                 = var.state
  idcs_access_token     = var.idcs_access_token
  network_endpoint_type = var.network_endpoint_type 
  project_tag           = var.project_tag

    
}



