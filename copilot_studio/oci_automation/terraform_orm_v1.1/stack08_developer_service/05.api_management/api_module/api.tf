resource oci_apigateway_api this {
    compartment_id = var.compartment_ocid
    content        = var.api_content
    display_name   = var.api_display_name
   
}