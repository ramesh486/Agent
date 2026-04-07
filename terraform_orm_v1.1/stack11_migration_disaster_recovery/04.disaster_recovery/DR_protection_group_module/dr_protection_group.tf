resource "oci_disaster_recovery_dr_protection_group" "test_dr_protection_group" {

    compartment_id = var.compartment_ocid
    display_name = var.dr_protection_group_display_name
    log_location {
        
        bucket = var.dr_protection_group_log_location_bucket
        namespace = var.dr_protection_group_log_location_namespace
    }

    association {
        
        role = var.dr_protection_group_association_role   
    }
    
    members {
        
        member_id = var.member_id
        member_type = var.dr_protection_group_members_member_type

    }
}