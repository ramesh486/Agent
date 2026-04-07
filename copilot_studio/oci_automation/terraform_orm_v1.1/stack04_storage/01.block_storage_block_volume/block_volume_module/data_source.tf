data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.compartment_ocid
}

data "oci_core_volume_backup_policies" "this" {
  filter {
    name   = "display_name"
    values = ["silver"]
  }
}
