resource "oci_database_cloud_exadata_infrastructure" "this" {
    availability_domain         = var.availability_domain
    compartment_id              = var.compartment_ocid
    display_name                = var.cloud_exadata_infrastructure_display_name
    shape                       = var.cloud_exadata_infrastructure_shape
    compute_count               = var.cloud_exadata_infrastructure_compute_count
    defined_tags                = var.project_tag.definedTags
    freeform_tags               = var.project_tag.freeformTags
    customer_contacts {
        email = var.cloud_exadata_infrastructure_customer_contacts_email
    }
    maintenance_window {
        preference                          = var.cloud_exadata_infrastructure_maintenance_window_preference
        is_custom_action_timeout_enabled    = var.cloud_exadata_infrastructure_maintenance_window_is_custom_action_timeout_enabled
        custom_action_timeout_in_mins       = var.cloud_exadata_infrastructure_maintenance_window_custom_action_timeout_in_mins
        hours_of_day                        = [ var.cloud_exadata_infrastructure_maintenance_window_hours_of_day ]
        is_monthly_patching_enabled         = var.cloud_exadata_infrastructure_maintenance_window_is_monthly_patching_enabled
        lead_time_in_weeks                  = var.cloud_exadata_infrastructure_maintenance_window_lead_time_in_weeks
        patching_mode                       = var.cloud_exadata_infrastructure_maintenance_window_patching_mode
        months {
            name = var.cloud_exadata_infrastructure_maintenance_window_months_name
        }
        days_of_week {
            name = var.cloud_exadata_infrastructure_maintenance_window_days_of_week_name
        }
    }
}