
data "oci_waas_certificates" "test_certificates" {
  compartment_id = var.compartment_ocid
  display_names = [var.certificate_display_name]
  ids           = [oci_waas_certificate.test_certificate.id]
}
