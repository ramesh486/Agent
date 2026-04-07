data "oci_identity_compartments" "app_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.app_compartment_id_in_subtree
    name                         = var.oke_compartment_name
}

data "oci_identity_compartments" "network_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.network_compartment_id_in_subtree
    name                         = var.network_compartment_name
}
data "oci_core_subnets" "k8s_api_endpoint_subnet" {
    compartment_id               = local.network_compartment_ocid
	filter {
        name                     = "display_name"
        values                   = ["${var.k8s_api_endpoint_subnet_display_name}"]
    }
}

data "oci_core_subnets" "worker_node_subnet" {
    compartment_id               = local.network_compartment_ocid
	filter {
        name                     = "display_name"
        values                   = ["${var.worker_subnet_display_name}"]
    }
}
data "oci_core_subnets" "load_balancer_subnet" {
    compartment_id               = local.network_compartment_ocid
	filter {
        name                     = "display_name"
        values                   = ["${var.load_balancer_subnet_display_name}"]
    }
}
data "oci_core_vcns" "this" {
    compartment_id               = local.network_compartment_ocid
	filter {
        name                     = "display_name"
        values                   = ["${var.vcn_display_name}"]
    }
}


data "oci_core_images" "images" {
    #Required
    compartment_id = var.tenancy_ocid

    #Optional
    display_name = var.image_display_name
    # operating_system = "Oracle Linux"  # var.image_operating_system
    # operating_system_version = var.image_operating_system_version
    # shape = var.node_instance_shape
    # state = var.image_state
    # sort_by = var.image_sort_by
    # sort_order = var.image_sort_order
}








