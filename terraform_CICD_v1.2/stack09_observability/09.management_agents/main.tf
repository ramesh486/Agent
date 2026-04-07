module management_agent_install_key {
     source                                                  = "./management_agent_module"
    compartment_ocid                                         = local.compartment_ocid
    management_agent_install_key_display_name                = var.management_agent_install_key_display_name
    management_agent_install_key_allowed_key_install_count   = var.management_agent_install_key_allowed_key_install_count
    management_agent_install_key_is_unlimited                = var.management_agent_install_key_is_unlimited
    management_agent_install_key_time_expires                = var.management_agent_install_key_time_expires
   
}