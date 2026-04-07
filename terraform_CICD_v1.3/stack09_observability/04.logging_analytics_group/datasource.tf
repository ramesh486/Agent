data "oci_identity_compartments" "monitoring_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.monitorimg_compartment_id_in_subtree
    name                         = var.monitoring_compartment_name
}


