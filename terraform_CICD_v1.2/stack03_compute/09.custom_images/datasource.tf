data "oci_identity_compartments" "app_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.app_compartment_id_in_subtree
    name                         = var.app_compartment_name
}

data "oci_core_instances" "this" {
    compartment_id               = local.app_compartment_ocid
	filter {
        name                     = "display_name"
        values                   = ["${var.instances_display_name}"]
    }
}
