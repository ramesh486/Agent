data "oci_identity_compartments" "this" {
    compartment_id            = var.tenancy_ocid
    compartment_id_in_subtree = var.compartment_id_in_subtree
    name                      = var.compartment_name
}

data "oci_dns_resolvers" "resolvers" {
    compartment_id  = local.compartment_ocid
    scope           = local.scope
    display_name    = var.dns_resolver_display_name
}


data "oci_core_subnets" "forwarder" {
    compartment_id  = local.compartment_ocid
    display_name    = var.dns_forwarder_subnet_display_name
}

data "oci_core_subnets" "listener" {
    compartment_id  = local.compartment_ocid
    display_name    = var.dns_listener_subnet_display_name
}

data "oci_dns_views" "views" {
    for_each = toset(var.oci_dns_views)
    compartment_id = local.compartment_ocid
    display_name = each.value
    scope = local.scope
}