module "web_app_accelaration" {
  source             = "./web_app_accelaration_module" 
  tenancy_ocid       = var.tenancy_ocid
  region             = var.region 
  compartment_ocid   = local.compartment_ocid
  web_app_acceleration_policy_display_name  = var.web_app_acceleration_policy_display_name
  is_response_header_based_caching_enabled  = var.is_response_header_based_caching_enabled 
  gzip_compression_is_enabled               = var.gzip_compression_is_enabled
  web_app_acceleration_display_name         = var.web_app_acceleration_display_name
  backend_type       = var.backend_type 
  load_balancer_ocid = local.load_balancer_ocid
  project_tag        = var.project_tag
}

