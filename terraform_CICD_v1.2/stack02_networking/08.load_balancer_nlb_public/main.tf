#########################
# Network Load Balancer  
########################

module "network_load_balancer" {
  source                  = "./networklb_module"
  compartment_ocid        = local.network_compartment_ocid
  nlb_display_name        = var.nlb_display_name
  is_private              = var.is_private
  nlb_ip_version          = var.nlb_ip_version
  subnet_ocid             = local.subnet_ocid
  project_tag             = var.project_tag  
}

#################################
# Network Load Balancer Listener 
#################################

module "listener" {
  source                      = "./listener_module"
  listener_name               = var.listener_name
  listener_port               = var.listener_port
  listener_protocol           = var.listener_protocol
  nlb_ip_version              = var.nlb_ip_version
  network_load_balancer_ocid  = module.network_load_balancer.network_load_balancer_ocid
  backendset_name             = module.backend_set.backendset_name
}

#################################
# Network Load Balancer Backend 
#################################

module "backend" {
 source                      = "./backend_module"
 backend_name                = var.backend_name
 backend_weight              = var.backend_weight
 backend_ip_address          = var.private_ip_address
 backend_port                = var.backend_port
 backendset_name             = module.backend_set.backendset_name
 network_load_balancer_ocid  = module.network_load_balancer.network_load_balancer_ocid
}

#####################################
# Network Load Balancer Backend Set 
#####################################

module "backend_set" {
  source                            = "./backend_set_module"
  backendset_name                   = var.backendset_name
  backendset_protocol               = var.backendset_protocol
  backendset_port                   = var.backendset_port
  backendset_policy                 = var.backendset_policy
  backendset_interval_in_millis     = var.backendset_interval_in_millis
  backendset_timeout_in_millis      = var.backendset_timeout_in_millis  
  backendset_retries                = var.backendset_retries
  backendset_request_data           = var.backendset_request_data
  backendset_response_data          = var.backendset_response_data
  return_code                       = var.return_code
  url_path                          = var.url_path
  nlb_ip_version                    = var.nlb_ip_version
  network_load_balancer_ocid        = module.network_load_balancer.network_load_balancer_ocid
}
