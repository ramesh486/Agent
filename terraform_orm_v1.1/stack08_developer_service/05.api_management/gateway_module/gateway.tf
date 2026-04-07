resource oci_apigateway_gateway  this {
    compartment_id = var.compartment_ocid
    endpoint_type  = var.gateway_endpoint_type
    subnet_id      = var.subnet_ocid
    display_name   = var.gateway_display_name
    certificate_id = var.certificate_ocid

}