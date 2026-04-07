module "instance_configuration" {

  source           = "./instance_configuration_module"
  region           = var.region
  tenancy_ocid     =var.tenancy_ocid
  compartment_ocid = var.compartment_ocid
  instance_configuration_display_name     = var.instance_configuration_display_name

  instance_type                       = var.instance_type
  ipxe_script                         = var.ipxe_script
  instance_shape                            = var.instance_shape
  display_name                        = var.display_name
  is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled
  preferred_maintenance_action        = var.preferred_maintenance_action
  launch_mode                         = var.launch_mode

  is_management_disabled = var.is_management_disabled
  is_monitoring_disabled = var.is_monitoring_disabled

  network_type           = var.network_type 

  are_legacy_imds_endpoints_disabled = var.are_legacy_imds_endpoints_disabled


  ocpus         = var.ocpus
  memory_in_gbs = var.memory_in_gbs
      
  assign_private_dns_record    = var.assign_private_dns_record 
  assign_public_ip             = var.assign_public_ip 
  vnic_display_name            = var.vnic_display_name 
  skip_source_dest_check       = var.skip_source_dest_check

  source_type = var.source_type 
  source_image_ocid   = var.source_image_ocid

  }
    