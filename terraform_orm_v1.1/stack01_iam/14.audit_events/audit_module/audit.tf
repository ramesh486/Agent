resource "oci_audit_configuration" "configuration" {
    #Required
    compartment_id = var.tenancy_ocid
    retention_period_days = var.configuration_retention_period_days
}

data "oci_audit_events" "audit_events" {
    #Required
    compartment_id = var.compartment_ocid
    end_time = var.audit_event_end_time
    start_time = var.audit_event_start_time
}

data "oci_audit_configuration" "configuration" {
    #Required
    compartment_id = var.tenancy_ocid
}

output "audit_events" {
  value = data.oci_audit_events.audit_events.audit_events
}

output "retention_period_days" {
  value = data.oci_audit_configuration.configuration.retention_period_days
}



