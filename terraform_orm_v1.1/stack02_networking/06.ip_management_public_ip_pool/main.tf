module "public_ip_pool" {
source                      = "./public_ip_pool_module"  
compartment_ocid            = var.compartment_ocid
tenancy_ocid                = var.tenancy_ocid
region                      = var.region
public_ip_pool_cidr_block   = var.public_ip_pool_cidr_block
byoip_range_id              = var.byoip_range_id
}
