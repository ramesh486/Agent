output "oci_dns_zone" {
    value = var.dns_zone_ocid == "" ? "" : data.oci_dns_zones.this[0].zones[0].name
}