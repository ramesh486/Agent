resource "oci_dns_resolver" "this" {
    resolver_id = var.dns_resolver_ocid
    scope = var.oci_dns_resolver_scope
    defined_tags = var.project_tag.definedTags
    freeform_tags = var.project_tag.freeformTags

    dynamic "rules" {
        for_each  = var.resolver_rules
        content {
            action                  = rules.value.resolver_rules_action
            destination_addresses   = rules.value.resolver_rules_destination_ip_address
            source_endpoint_name    = rules.value.source_endpoint_name
            client_address_conditions   = rules.value.resolver_rules_condition == "CIDR_BLOCKS" ? [rules.value.resolver_rules_client_address_conditions] : []
            qname_cover_conditions  = rules.value.resolver_rules_condition == "DOMAIN" ? [rules.value.qname_cover_conditions] : []
        }
    }
}