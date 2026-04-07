resource  oci_apigateway_subscriber this {
    clients {
        name       = var.subscriber_clients_name
        token      = var.subscriber_clients_token
    }
    compartment_id = var.compartment_ocid
    usage_plans    = var.subscriber_usage_plans
    display_name   = var.subscriber_display_name
    defined_tags   = var.project_tag.definedTags
    freeform_tags  = var.project_tag.freeformTags
   
}
