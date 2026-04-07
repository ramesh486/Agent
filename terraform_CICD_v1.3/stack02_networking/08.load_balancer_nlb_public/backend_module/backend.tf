### Backend ###

resource "oci_network_load_balancer_backend" "backend" {
  backend_set_name         = var.backendset_name
  name                     = var.backend_name 
  network_load_balancer_id = var.network_load_balancer_ocid
  port                     = var.backend_port 
  ip_address               = var.backend_ip_address            
  weight                   = var.backend_weight
}
