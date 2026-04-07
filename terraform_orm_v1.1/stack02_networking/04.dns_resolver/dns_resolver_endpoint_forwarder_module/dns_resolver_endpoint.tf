resource "oci_dns_resolver_endpoint" "this" {
    is_forwarding = var.resolver_endpoint_is_forwarding
    is_listening = var.resolver_endpoint_is_listening
    name = var.resolver_endpoint_name
    resolver_id = var.dns_resolver_ocid
    subnet_id = var.subnet_ocid
    scope = var.resolver_endpoint_scope
    endpoint_type = var.resolver_endpoint_endpoint_type
}