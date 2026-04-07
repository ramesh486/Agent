resource "oci_golden_gate_deployment" "this" {
    compartment_id                      = var.compartment_ocid
    cpu_core_count                      = var.deployment_cpu_core_count
    deployment_type                     = var.deployment_deployment_type
    display_name                        = var.deployment_display_name
    is_auto_scaling_enabled             = var.deployment_is_auto_scaling_enabled
    license_model                       = var.deployment_license_model
    subnet_id                           = var.subnet_ocid
    defined_tags                        = var.project_tag.definedTags
    deployment_backup_id                = var.golden_gate_deployment_backup_ocid
    description                         = var.deployment_description
    fqdn                                = var.deployment_fqdn
    freeform_tags                       = var.project_tag.freeformTags
    is_public                           = var.deployment_is_public
    nsg_ids                             = var.deployment_nsg_ocids
    dynamic "maintenance_window" {
        for_each = var.deployment_maintenance_window_day == "" ? [] :[ var.deployment_maintenance_window_day ]
        content {
            day             = var.deployment_maintenance_window_day
            start_hour      = var.deployment_maintenance_window_start_hour           
        }
    }
    ogg_data {
        admin_password      = var.deployment_ogg_data_admin_password
        admin_username      = var.deployment_ogg_data_admin_username
        deployment_name     = var.golden_gate_deployment_instance_name
        certificate         = var.deployment_ogg_data_certificate
        key                 = var.deployment_ogg_data_key
    }
}