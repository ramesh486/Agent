module "reserved_public_ip_pool" {
    source              = "./reserved_public_ip_module"
	tenancy_ocid     	= var.tenancy_ocid
    region          	= var.region
	compartment_ocid 	= local.compartment_ocid
	display_name	    = var.display_name
	lifetime 			= var.lifetime
	project_tag         = var.project_tag
}
