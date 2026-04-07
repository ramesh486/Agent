data "oci_core_cpe_device_shapes" "cpe_device_shapes" {}

data "oci_core_cpe_device_shape" "this" {
    cpe_device_shape_id = lookup(element(data.oci_core_cpe_device_shapes.cpe_device_shapes.cpe_device_shapes, index(data.oci_core_cpe_device_shapes.cpe_device_shapes.cpe_device_shapes.*.cpe_device_info.0.platform_software_version, "N.A")), "cpe_device_shape_id")
}

data "oci_core_ipsec_connection_tunnels" "this" {
    depends_on = [
      oci_core_ipsec.ipsec_connection
    ]
    ipsec_id = oci_core_ipsec.ipsec_connection.id
}


