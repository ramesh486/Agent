resource oci_core_instance instance_01 {
  
  
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id      = var.compartment_ocid

  display_name        = var.vm_display_name 
  fault_domain        = var.fault_domain

  shape = var.vm_shape

  defined_tags              = var.project_tag.definedTags
  freeform_tags             = var.project_tag.freeformTags

  agent_config {
    are_all_plugins_disabled = var.are_all_plugins_disabled
    is_management_disabled   = var.is_management_disabled
    is_monitoring_disabled   = var.is_monitoring_disabled
    
    plugins_config {
      desired_state = var.desired_state1
      name          = var.name1
    }
    plugins_config {
      desired_state = var.desired_state2
      name          = var.name2
    }
    plugins_config {
      desired_state = var.desired_state3
      name          = var.name3
    }
    plugins_config {
      desired_state = var.desired_state4
      name          = var.name4
    }
    plugins_config {
      desired_state = var.desired_state5
      name          = var.name5
    }
    plugins_config {
      desired_state = var.desired_state6
      name          = var.name6
    }
    plugins_config {
      desired_state = var.desired_state7
      name          = var.name7
    }
    
  }

  create_vnic_details {
    assign_public_ip  = var.assign_public_ip
    hostname_label    = var.vnic_hostname
    nsg_ids = [
    ]
    subnet_id         = var.subnet_ocid
  }
 
  launch_options {
    boot_volume_type                    = var.boot_volume_type
    firmware                            = var.firmware
    
    network_type                        = var.network_type
    remote_data_volume_type             = var.remote_data_volume_type
  }

  metadata  = {
    ssh_authorized_keys = var.ssh_authorized_keys
  }


  shape_config {
    memory_in_gbs  = var.memory_in_gbs
    ocpus          = var.ocpu_count
  }

  source_details {
    source_id      = var.source_image_ocid
    source_type    = var.source_type
    
  }
}

data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.compartment_ocid
}

### END