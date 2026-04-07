data "oci_identity_availability_domains" "ADs" {
    compartment_id = var.compartment_ocid
}

locals {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[0], "name")
}

output "ad_name" {
  value = local.availability_domain
}