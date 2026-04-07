###############
#Compute cluster
###############

module "compute_cluster" {
    source                 		  = "./compute_cluster_module"
    availability_domain			  = var.availability_domain
	tenancy_ocid                  = var.tenancy_ocid
	region                        = var.region
    compartment_ocid              = local.compartment_ocid
	compute_cluster_display_name  = var.compute_cluster_display_name
    project_tag                   = var.project_tag
}
