resource "oci_database_external_non_container_database_management" "this" {
  external_non_container_database_id = var.external_non_container_database_ocid
  external_database_connector_id     = var.external_database_connector_ocid
  license_model                      = var.db_management_license_model
  enable_management                  = var.enable_management
}