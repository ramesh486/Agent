resource "oci_core_compute_capacity_reservation" "cr" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id      = var.compartment_ocid
  instance_reservation_configs {
    instance_shape = var.instance_shape
    reserved_count = var.instance_count
  }
}
data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.compartment_ocid
}
