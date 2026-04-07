resource "oci_core_public_ip" "test_public_ip" {
  compartment_id    = var.compartment_ocid
  lifetime          = "RESERVED"
  public_ip_pool_id = oci_core_public_ip_pool.test_public_ip_pool.id
}

resource "oci_core_public_ip_pool_capacity" "test_public_ip_pool_capacity" {
  public_ip_pool_id = oci_core_public_ip_pool.test_public_ip_pool.id
  cidr_block        = var.public_ip_pool_cidr_block
  byoip_id          = var.byoip_range_id
}

resource "oci_core_public_ip_pool" "test_public_ip_pool" {
  compartment_id = var.compartment_ocid
}


