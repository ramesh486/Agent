module "public_ip_pool" {
source                      = "./public_ip_pool_module"  
compartment_ocid            = local.compartment_ocid
tenancy_ocid                = var.tenancy_ocid
region                      = var.region
public_ip_pool_cidr_block   = var.public_ip_pool_cidr_block
byoip_range_ocid            = var.byoip_range_ocid
project_tag                 = var.project_tag
public_ip_pool_display_name   = var.public_ip_pool_display_name
}
