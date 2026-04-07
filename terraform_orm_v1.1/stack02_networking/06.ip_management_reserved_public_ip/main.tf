module "reserved_public_ip_pool" {
    source              = "./reserved_public_ip_module"
	tenancy_ocid     	= var.tenancy_ocid
    region          	= var.region
	compartment_ocid 	= var.compartment_ocid
	display_name	    = var.display_name
	lifetime 			= var.lifetime
}
