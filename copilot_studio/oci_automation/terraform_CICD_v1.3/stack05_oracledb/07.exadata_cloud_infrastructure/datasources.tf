data "oci_identity_availability_domains" "ADs" {
    compartment_id = local.compartment_ocid
}

locals {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[0], "name")
}

output "ad_name" {
  value = local.availability_domain
}

data "oci_identity_compartments" "this" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.compartment_id_in_subtree
    name                         = var.compartment_name
}
