

data "oci_identity_compartment" "backup_compartment" {
    id = var.compartment_ocid
}

data "oci_objectstorage_bucket" "dataflow-logs" {
    #Required
    name      = var.Data_Flow_bucket_name
    namespace = var.Data_Flow_bucket_namespace
}

data "oci_objectstorage_bucket" "dataflow-warehouse" {
    #Required
    name      = var.Data_Flow_warehouse_bucket_name
    namespace = var.Data_flow_warehouse_bucket_namespace
}


data "oci_identity_compartments" "this" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.compartment_id_in_subtree
    name                         = var.compartment_name
}

data "oci_core_subnets" "this" {
    compartment_id     = local.compartment_ocid
	filter {
        name            = "display_name"
        values           = ["${var.subnet_display_name}"]
    }
}
