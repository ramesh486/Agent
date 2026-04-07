module "configuration" {
  source                               = "./audit_module"
  tenancy_ocid                         = var.tenancy_ocid
  configuration_retention_period_days  = var.configuration_retention_period_days
  audit_event_end_time                 =var.audit_event_end_time
  audit_event_start_time               = var.audit_event_start_time
  compartment_ocid                      = local.compartment_ocid
 
} 

