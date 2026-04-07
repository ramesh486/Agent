resource oci_network_firewall_network_firewall this {
    compartment_id             = var.compartment_ocid
    network_firewall_policy_id = var.network_firewall_policy_ocid
    subnet_id                  = var.subnet_ocid
    display_name               = var.network_firewall_display_name
   }

