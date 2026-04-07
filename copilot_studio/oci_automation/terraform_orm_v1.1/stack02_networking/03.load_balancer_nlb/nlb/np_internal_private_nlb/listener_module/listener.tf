### Listener ###

resource "oci_network_load_balancer_listener" "listener" {
  default_backend_set_name = var.backendset_name
  ip_version               = var.nlb_ip_version
  name                     = var.listener_name
  network_load_balancer_id = var.network_load_balancer_ocid
  port                     = var.listener_port 
  protocol                 = var.listener_protocol 
}