module "dns_tsig_key" {
    source                  = "./dns_tsig_key_module"
    project_tag             = var.project_tag
    compartment_ocid        = var.compartment_ocid
    tsig_key_name           = var.tsig_key_name
    tsig_key_algorithm      = var.tsig_key_algorithm
    tsig_key_secret         = var.tsig_key_secret
}