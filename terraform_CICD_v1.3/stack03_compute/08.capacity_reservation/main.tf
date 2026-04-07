########################
### Capacity_reservation
########################
module "capacity_reservation" {
  source                            = "./capacity_reservation_module"
  region                            = var.region
  tenancy_ocid                      = var.tenancy_ocid
  compartment_ocid                  = local.compartment_ocid
  instance_shape                    = var.instance_shape
  instance_count                    = var.instance_count
  capacity_reservation_display_name = var.capacity_reservation_display_name
  project_tag                       = var.project_tag
}
