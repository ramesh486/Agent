data "oci_identity_compartments" "db_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.db_compartment_id_in_subtree
    name                         = var.db_compartment_name
}

data "oci_identity_compartments" "network_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.network_compartment_id_in_subtree
    name                         = var.network_compartment_name
}

data "oci_core_subnets" "this" {
    compartment_id               = local.network_compartment_ocid
	filter {
        name                     = "display_name"
        values                   = ["${var.subnet_display_name}"]
    }
}

data "oci_core_vcns" "test_vcns" {
    compartment_id = local.network_compartment_ocid
    filter {
        name                     = "display_name"
        values                   = ["${var.vcn_display_name}"]
    }
}

