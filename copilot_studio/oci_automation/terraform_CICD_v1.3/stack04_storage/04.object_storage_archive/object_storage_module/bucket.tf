resource "oci_objectstorage_bucket" "this" {
   compartment_id         = var.compartment_ocid
   namespace              = data.oci_objectstorage_namespace.this.namespace
   defined_tags           = var.project_tag.definedTags
   freeform_tags          = var.project_tag.freeformTags
   name                   = var.bucket_name
   storage_tier           = var.bucket_storage_tier
   access_type            = var.bucket_access_type
   versioning             = var.bucket_versioning
   auto_tiering           = var.auto_tiering
   object_events_enabled  = var.object_event_enabled
}
