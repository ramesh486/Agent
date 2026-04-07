module "vault" {
    source                  = "./vault_module"
    tenancy_ocid            = var.tenancy_ocid
    compartment_ocid        = var.compartment_ocid
    vault_display_name          = var.vault_display_name
    vault_type              = var.vault_type 
}