resource "oci_core_instance_configuration" "test_instance_configuration" {
  compartment_id             = var.compartment_ocid
  display_name               = var.instance_configuration_display_name

  instance_details {
    instance_type = var.instance_type
  launch_details {
      compartment_id                      = var.compartment_ocid
      ipxe_script                         = var.ipxe_script
      shape                               = var.instance_shape
      display_name                        = var.display_name
      is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled
      preferred_maintenance_action        = var.preferred_maintenance_action
      launch_mode                         = var.launch_mode
      defined_tags                        = var.project_tag.definedTags
      freeform_tags                       = var.project_tag.freeformTags

      agent_config {
        is_management_disabled = var.is_management_disabled
        is_monitoring_disabled = var.is_monitoring_disabled
      }

      launch_options {
        network_type   = var.network_type 
      }

      
      instance_options {
        are_legacy_imds_endpoints_disabled = var.are_legacy_imds_endpoints_disabled
      }

      shape_config {
        ocpus         = var.ocpus
        memory_in_gbs = var.memory_in_gbs
      }

      create_vnic_details {
        assign_private_dns_record    = var.assign_private_dns_record 
        assign_public_ip             = var.assign_public_ip 
        display_name                 = var.vnic_display_name 
        skip_source_dest_check       = var.skip_source_dest_check 
      }

      extended_metadata = {
        some_string   = "stringA"
        nested_object = "{\"some_string\": \"stringB\", \"object\": {\"some_string\": \"stringC\"}}"
      }

      source_details {
        source_type = var.source_type 
        image_id    = var.source_image_ocid
      }
    }
  }
}