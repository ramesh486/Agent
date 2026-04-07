module "vault" {
    source                  = "./vault_module"
    tenancy_ocid            = var.tenancy_ocid
    compartment_ocid        = local.security_compartment_ocid
    vault_display_name      = var.vault_display_name
    vault_type              = var.vault_type 
    project_tag             = var.project_tag
}