data "oci_identity_compartments" "this" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.compartment_id_in_subtree
    name                         = var.compartment_name
}

data "oci_load_balancer_load_balancers" "this" {
    #Required
    compartment_id = local.compartment_ocid
        filter {
      name = "display_name"
      values = ["${var.load_balancer_display_name}"]
    }
}