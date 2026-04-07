output "stream_ocid" {
  value = oci_streaming_stream.oci_stream.id
}

output "stream_pool_ocid" {
  value = oci_streaming_stream_pool.stream_pool.id
}

output "vcn_ocid" {
  value = oci_core_vcn.stream_vcn.id
}

output "subnet_ocid" {
  value = oci_core_subnet.stream_subnet.id
}

output "nsg_ocid" {
  value = oci_core_network_security_group.stream_nsg.id
}