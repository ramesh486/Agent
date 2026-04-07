resource "oci_core_cluster_network" "test_cluster_network" {

    compartment_id   = var.compartment_ocid

    instance_pools {

        instance_configuration_id = var.instance_configuration_ocid
        size                      = var.cluster_network_instance_pools_size
    }
    display_name                  = var.cluster_network_instance_pools_display_name


    placement_configuration {

        availability_domain   = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
        primary_subnet_id     = var.subnet_ocid
    }
}
data "oci_identity_availability_domains" "ADs" {

  compartment_id     = var.compartment_ocid
}
