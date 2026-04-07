resource "oci_certificates_management_ca_bundle" "test_ca_bundle" {
    compartment_id   = var.compartment_ocid
    ca_bundle_pem    = var.ca_bundle_ca_bundle_pem
    description      = var.description
    name             = var.ca_bundle_name
}