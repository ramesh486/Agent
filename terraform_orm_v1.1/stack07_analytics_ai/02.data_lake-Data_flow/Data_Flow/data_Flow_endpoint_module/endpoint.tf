resource "oci_dataflow_private_endpoint" "test_private_endpoint" {
    #Required
    compartment_id = var.compartment_ocid
    dns_zones      = var.private_endpoint_dns_zones
    subnet_id      = var.subnet_ocid
    display_name   = var.dataflow_private_endpoint_display_name
    
}

