# resolver_rules_condition should be one of these values - "ALL", "CIDR_BLOCKS", "DOMAIN"
# only one value is supported for resolver_rules_destination_ip_address

locals {
  dns_resolver_rules = [
    {
      "resolver_rules_condition"                    = "ALL"
      "resolver_rules_action"                       = "FORWARD"
      "resolver_rules_destination_ip_address"       = ["168.244.212.13"]
      "source_endpoint_name"                        = module.dns_forwarder.forwarder_name
    },
    {
      "resolver_rules_condition"                    = "CIDR_BLOCKS"
      "resolver_rules_action"                       = "FORWARD"
      "resolver_rules_destination_ip_address"       = ["168.244.212.13"]
      "source_endpoint_name"                        = module.dns_forwarder.forwarder_name
      "resolver_rules_client_address_conditions"    = "10.1.1.6/16"
    },
    {
      "resolver_rules_condition"                    = "DOMAIN"
      "resolver_rules_action"                       = "FORWARD"
      "resolver_rules_destination_ip_address"       = ["168.244.212.13"]
      "source_endpoint_name"                        = module.dns_forwarder.forwarder_name
      "qname_cover_conditions"                      = "something.example.com"
    }
  ]
}