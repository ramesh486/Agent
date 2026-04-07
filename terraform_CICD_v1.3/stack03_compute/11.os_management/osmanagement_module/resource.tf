resource "oci_core_instance" "test_instance" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id      = var.compartment_ocid
  display_name        = var.instance_display_name
  shape               = var.shape

  create_vnic_details {
    subnet_id        = oci_core_subnet.test_subnet.id
    display_name     = var.vnic_display_name
    assign_public_ip = var.assign_public_ip 
    hostname_label   = var.hostname_label
  }

  source_details {
    source_type = var.source_type
    source_id   = var.instance_image_ocid
  }
  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }
  timeouts {
    create = var.create
  }
}
resource "oci_core_vcn" "test_vcn" {
  cidr_block     = var.vcn_cidr_block
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}

resource "oci_core_internet_gateway" "test_internet_gateway" {
  compartment_id = var.compartment_ocid
  display_name   = var.igw_display_name
  vcn_id         = oci_core_vcn.test_vcn.id
}

resource "oci_core_default_route_table" "default_route_table" {
  manage_default_resource_id = oci_core_vcn.test_vcn.default_route_table_id
  display_name               = var.rt_display_name

  route_rules {
    destination       = var.route_rules_destination
    destination_type  = var.route_rules_destination_type
    network_entity_id = oci_core_internet_gateway.test_internet_gateway.id
  }
}

resource "oci_core_subnet" "test_subnet" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  cidr_block          = var.subnet_cidr_block 
  display_name        = var.subnet_display_name
  dns_label           = var.subnet_dns_label
  security_list_ids   = [oci_core_vcn.test_vcn.default_security_list_id]
  compartment_id      = var.compartment_ocid
  vcn_id              = oci_core_vcn.test_vcn.id
  route_table_id      = oci_core_vcn.test_vcn.default_route_table_id
  dhcp_options_id     = oci_core_vcn.test_vcn.default_dhcp_options_id
}

resource "oci_osmanagement_managed_instance_group" "test_managed_instance_group" {
  #Required
  compartment_id = var.compartment_ocid
  display_name   = var.managed_instance_group_display_name
}



resource "oci_osmanagement_software_source" "test_software_source" {
  #Required
  arch_type      = var.arch_type
  compartment_id = var.compartment_ocid
  display_name   = var.software_source_display_name

  #Optional
  checksum_type = var.checksum_type
  defined_tags = {
  }
  description = var.description
  freeform_tags = {
    "freeformkey" = "freeformvalue"
  }
}
resource "oci_osmanagement_managed_instance_management" "test_managed_instance_management" {
  managed_instance_id = oci_core_instance.test_instance.id

   parent_software_source {
    id   = oci_osmanagement_software_source.test_software_source.id
    name = oci_osmanagement_software_source.test_software_source.display_name
}

  managed_instance_groups {
    id           = oci_osmanagement_managed_instance_group.test_managed_instance_group.id
    display_name = oci_osmanagement_managed_instance_group.test_managed_instance_group.display_name
   }
}
data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.compartment_ocid
}

data "oci_osmanagement_managed_instance" "test_managed_instance" {
  #Required
  managed_instance_id = oci_osmanagement_managed_instance_management.test_managed_instance_management.id
}

