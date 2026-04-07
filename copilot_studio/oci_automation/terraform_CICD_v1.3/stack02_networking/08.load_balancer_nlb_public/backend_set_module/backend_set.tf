###  Backend_set ###

resource "oci_network_load_balancer_backend_set" "backend_set" {
  health_checker {
    protocol               = var.backendset_protocol 
    port                   = var.backendset_port
    interval_in_millis     = var.backendset_interval_in_millis
    timeout_in_millis      = var.backendset_timeout_in_millis  
    retries                = var.backendset_retries
    request_data           = var.backendset_request_data
    response_data          = var.backendset_response_data
    return_code            = var.return_code
    url_path               = var.url_path
  }
  ip_version               = var.nlb_ip_version
  name                     = var.backendset_name
  network_load_balancer_id = var.network_load_balancer_ocid
  policy                   = var.backendset_policy
}