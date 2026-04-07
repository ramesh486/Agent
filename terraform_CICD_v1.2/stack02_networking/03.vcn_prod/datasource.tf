data "oci_identity_compartments" "this" {
    #Required
    compartment_id = var.tenancy_ocid

    #Optional
    compartment_id_in_subtree = var.network_compartment_id_in_subtree
    name = var.network_compartment_name
}
data "oci_core_drgs" "this" {
    
     compartment_id = local.network_compartment_ocid
    
      	filter {
        name = "display_name"
        values = ["${var.drg_display_name}"]
    }
}