resource "oci_opa_opa_instance" "test_opa_instance" {
  compartment_id    = var.compartment_ocid
  consumption_model = var.consumption_model
  display_name      = var.display_name
  idcs_at           = var.idcs_access_token
  metering_type     = var.metering_type
  shape_name        = var.shape_name
}
