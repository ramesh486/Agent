output "ocid" {
    value = var.connection_type == "GOLDENGATE" ? oci_golden_gate_connection.golden_gate.0.id : oci_golden_gate_connection.this.0.id
}