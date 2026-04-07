module test_dr_protection_group  {
source                                     = "./DR_protection_group_module"
compartment_ocid                           = var.compartment_ocid
dr_protection_group_display_name           = var.dr_protection_group_display_name
dr_protection_group_log_location_bucket    = var.dr_protection_group_log_location_bucket
dr_protection_group_log_location_namespace = var.dr_protection_group_log_location_namespace
dr_protection_group_association_role       = var.dr_protection_group_association_role
dr_protection_group_members_member_type    = var.dr_protection_group_members_member_type
member_ocid                                = var.member_ocid
project_tag                                = var.project_tag
}