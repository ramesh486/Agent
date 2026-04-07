
data "oci_identity_domains" "this" {
    compartment_id = var.tenancy_ocid
        filter {
        name = "display_name"
        values = ["${var.domain_display_name}"]
    }
}
