##########################
## object storage bucket
##########################
module "object_storage_bucket" {
    source                      = "./object_storage_module"
    compartment_ocid            = local.compartment_ocid
    region                      = var.region
    tenancy_ocid                = var.tenancy_ocid
    project_tag                 = var.project_tag
    bucket_name                 = var.bucket_name
    bucket_storage_tier         = var.bucket_storage_tier
    bucket_access_type          = var.bucket_access_type
    bucket_versioning           = var.bucket_versioning
    auto_tiering                = var.auto_tiering
    object_event_enabled        = var.object_event_enabled
   }


