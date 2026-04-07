resource "oci_golden_gate_connection_assignment" "this" {
    connection_id = var.golden_gate_connection_ocid
    deployment_id = var.golden_gate_deployment_ocid
}