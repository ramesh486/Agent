
module "instance" {

    source                   = "./instance_module"
    compartment_ocid         = local.app_compartment_ocid
  
    subnet_ocid              = local.subnet_ocid
    vm_display_name          = var.vm_display_name 
    project_tag              = var.project_tag

    are_all_plugins_disabled = var.are_all_plugins_disabled
    is_management_disabled   = var.is_management_disabled
    is_monitoring_disabled   = var.is_monitoring_disabled

    desired_state1 = var.desired_state1
    name1          = var.name1
    desired_state2 = var.desired_state2
    name2          = var.name2
    desired_state3 = var.desired_state3
    name3          = var.name3
    desired_state4 = var.desired_state4
    name4          = var.name4
    desired_state5 = var.desired_state5
    name5          = var.name5
    desired_state6 = var.desired_state6
    name6          = var.name6
    desired_state7 = var.desired_state7
    name7          = var.name7
   

    assign_public_ip  = var.assign_public_ip
    vnic_hostname     = var.vnic_hostname
    fault_domain      = var.fault_domain

    boot_volume_type        = var.boot_volume_type
    firmware                = var.firmware
    network_type            = var.network_type
    remote_data_volume_type = var.remote_data_volume_type
    ssh_authorized_keys     = var.ssh_authorized_keys

    vm_shape           = var.vm_shape
    memory_in_gbs      = var.memory_in_gbs
    ocpu_count         = var.ocpu_count
    source_image_ocid  = var.source_image_ocid
    source_type        = var.source_type

}

### END