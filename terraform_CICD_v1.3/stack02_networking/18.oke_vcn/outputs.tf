output "region" {
  value = data.oci_identity_region_subscriptions.this.region_subscriptions[0].region_key
}


output "services" {
  value = data.oci_core_services.this.services[0].id
}