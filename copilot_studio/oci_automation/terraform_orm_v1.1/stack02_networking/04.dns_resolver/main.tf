module "dns_forwarder" {
    source                              = "./dns_resolver_endpoint_forwarder_module"
    compartment_ocid                    = var.compartment_ocid
    project_tag                         = var.project_tag
    resolver_endpoint_is_forwarding     = var.dns_forwarder_resolver_endpoint_is_forwarding
    resolver_endpoint_is_listening      = var.dns_forwarder_resolver_endpoint_is_listening
    resolver_endpoint_name              = var.dns_forwarder_resolver_endpoint_name
    dns_resolver_ocid                   = var.dns_resolver_ocid
    subnet_ocid                         = var.dns_forwarder_subnet_ocid
}

module "dns_listener" {
    source                              = "./dns_resolver_endpoint_listener_module"
    compartment_ocid                    = var.compartment_ocid
    project_tag                         = var.project_tag
    resolver_endpoint_is_forwarding     = var.dns_listener_resolver_endpoint_is_forwarding
    resolver_endpoint_is_listening      = var.dns_listener_resolver_endpoint_is_listening
    resolver_endpoint_name              = var.dns_listener_resolver_endpoint_name
    dns_resolver_ocid                   = var.dns_resolver_ocid
    subnet_ocid                         = var.dns_listener_subnet_ocid
}

module "dns_resolver" {
    source                                      = "./dns_resolver_module"
    compartment_ocid                            = var.compartment_ocid
    project_tag                                 = var.project_tag
    dns_resolver_ocid                           = var.dns_resolver_ocid
    source_endpoint_name                        = module.dns_forwarder.forwarder_name
    resolver_rules                              = local.dns_resolver_rules
}