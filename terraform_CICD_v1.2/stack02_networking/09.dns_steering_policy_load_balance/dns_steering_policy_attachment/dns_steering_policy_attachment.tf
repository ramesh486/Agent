resource "oci_dns_steering_policy_attachment" "without_dns_sub_domain_name" {
    count              = var.dns_sub_domain_name == "" ? 1 : 0
    domain_name        = local.dns_zone_name
    steering_policy_id = var.dns_steering_policy_ocid
    zone_id            = var.dns_zone_ocid
}

resource "oci_dns_steering_policy_attachment" "with_dns_sub_domain_name" {
    count              = var.dns_sub_domain_name == "" ? 0 : 1
    domain_name        = "${var.dns_sub_domain_name}"
    steering_policy_id = var.dns_steering_policy_ocid
    zone_id            = var.dns_zone_ocid
}