resource "oci_database_external_non_container_database" "this" {
  compartment_id      = var.compartment_ocid
  display_name        = var.external_non_container_database_display_name
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
}

resource "oci_database_external_database_connector" "this" {
  connection_credentials {
    credential_type   = var.connector_credential_type
    credential_name   = var.connector_credential_name
    }
    connection_string {
        hostname  = var.connection_string_hostname
        port      = var.connection_string_port
        protocol  = var.connection_string_protocol
        service   = var.connection_string_service
    }
    connector_agent_id    = var.connector_agent_id
    display_name          = var.external_database_connector_display_name
    external_database_id  = oci_database_external_non_container_database.this.id
    connector_type        = var.connector_type
    defined_tags          = var.project_tag.definedTags
    freeform_tags         = var.project_tag.freeformTags    
}

resource "oci_database_external_non_container_database_management" "this" {
  external_non_container_database_id = oci_database_external_non_container_database.this.id
  external_database_connector_id     = oci_database_external_database_connector.this.id
  license_model                      = var.db_management_license_model
  enable_management                  = var.enable_management
}