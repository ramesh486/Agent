###  Netowrk LB  ###

### Creates a network load balancer ####

resource "oci_network_load_balancer_network_load_balancer" "network_load_balancer" {
  compartment_id  = var.compartment_ocid
  display_name    = var.nlb_display_name 
  is_private      = var.is_private
  nlb_ip_version  = var.nlb_ip_version
  subnet_id       = var.subnet_ocid 
  defined_tags    = var.project_tag.definedTags
  freeform_tags   = var.project_tag.freeformTags
}

### END
