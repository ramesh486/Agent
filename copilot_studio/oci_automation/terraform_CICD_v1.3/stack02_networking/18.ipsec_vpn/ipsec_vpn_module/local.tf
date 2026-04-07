locals {
  cpe_device_shape_id   = data.oci_core_cpe_device_shape.this.cpe_device_shape_id
  tunnel1_ocid          = data.oci_core_ipsec_connection_tunnels.this.ip_sec_connection_tunnels[0].id
  tunnel2_ocid          = data.oci_core_ipsec_connection_tunnels.this.ip_sec_connection_tunnels[1].id
}