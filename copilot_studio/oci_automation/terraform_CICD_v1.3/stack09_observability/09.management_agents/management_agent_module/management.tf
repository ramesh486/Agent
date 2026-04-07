resource "oci_management_agent_management_agent_install_key" "test_management_agent_install_key" {
    #Required
    compartment_id             = var.compartment_ocid
    display_name               = var.management_agent_install_key_display_name 
    allowed_key_install_count  = var.management_agent_install_key_allowed_key_install_count
    is_unlimited               = var.management_agent_install_key_is_unlimited
    time_expires               = var.management_agent_install_key_time_expires
}