resource oci_core_instance test_instance {
  # region              = var.region
  
  agent_config {
    are_all_plugins_disabled = var.are_all_plugins_disabled
    is_management_disabled   = var.is_management_disabled
    is_monitoring_disabled   = var.is_monitoring_disabled
    # defined_tags              = var.defined_tags
    # freeform_tags             = var.freeform_tags

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
    # plugins_config {
    #   desired_state = var.desired_state8
    #   name          = var.name8
    # }
  }

  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id      = var.compartment_ocid

  create_vnic_details {
    assign_public_ip  = var.assign_public_ip
    hostname_label    = var.vnic_hostname
    nsg_ids = [
    ]
    subnet_id         = var.subnet_ocid
  }
  display_name        = var.vm_display_name 
  fault_domain        = var.fault_domain

  launch_options {
    boot_volume_type                    = var.boot_volume_type
    firmware                            = var.firmware
    # is_consistent_volume_naming_enabled = var.is_consistent_volume_naming_enabled
    # is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled
    network_type                        = var.network_type
    remote_data_volume_type             = var.remote_data_volume_type
  }

  metadata  = {
    ssh_authorized_keys = var.ssh_authorized_keys
  }

  shape = var.instance_shape
  shape_config {
    memory_in_gbs  = var.memory_in_gbs
    ocpus          = var.ocpus
  }

  source_details {
    source_id      = var.source_image_ocid
    source_type    = var.source_type
    
  }
}

data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.compartment_ocid
}

resource "oci_core_image" "test_image" {
  compartment_id              = var.compartment_ocid
  instance_id                 = oci_core_instance.test_instance.id
#   launch_mode                 = var.custom_image_launch_mode

#   timeouts {
#     create = "30m"
#   }
}

resource "oci_core_instance_configuration" "test_instance_configuration" {
  compartment_id             = var.compartment_ocid
  display_name               = var.instance_configuration_display_name

  instance_details {
    instance_type = var.instance_type
  launch_details {
      compartment_id                      = var.compartment_ocid
      ipxe_script                         = "ipxeScript"
      shape                               = var.instance_shape
      display_name                        = "TestInstanceConfigurationLaunchDetails"
      is_pv_encryption_in_transit_enabled = false
      preferred_maintenance_action        = "LIVE_MIGRATE"
      launch_mode                         = "NATIVE"

      agent_config {
        is_management_disabled = false
        is_monitoring_disabled = false
      }

      launch_options {
        network_type = "PARAVIRTUALIZED"
      }

      instance_options {
        are_legacy_imds_endpoints_disabled = false
      }

      shape_config {
        ocpus = var.ocpus
        memory_in_gbs = var.memory_in_gbs
      }

      create_vnic_details {
        assign_private_dns_record    = false
        assign_public_ip             = true
        display_name                 = "TestInstanceConfigurationVNIC"
        skip_source_dest_check       = false
      }

      extended_metadata = {
        some_string   = "stringA"
        nested_object = "{\"some_string\": \"stringB\", \"object\": {\"some_string\": \"stringC\"}}"
      }

      source_details {
        source_type = "image"
        image_id    = oci_core_image.test_image.id
      }
    }
  }
}
resource "oci_core_instance_pool" "test_instance_pool" {
  compartment_id                = var.compartment_ocid
  instance_configuration_id     = oci_core_instance_configuration.test_instance_configuration.id
  size                          = var.instance_pool_size
  state                         = var.instance_pool_state
  display_name                  = var.instance_pool_display_name

  placement_configurations {
    availability_domain         = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
    fault_domains = [
      "FAULT-DOMAIN-1"]
    primary_subnet_id           = var.subnet_ocid
  }
  # load_balancers {
  #   #backend_set_name = oci_load_balancer_backend_set.test_backend_set.name
  #   #load_balancer_id = oci_load_balancer.test_load_balancer.id
  #   port = 80
  #   vnic_selection = "primaryvnic"
  # }

  lifecycle {
    ignore_changes = [size]
  }
}
