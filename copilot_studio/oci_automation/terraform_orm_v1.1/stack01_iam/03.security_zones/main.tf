module "security_zone"{
    source                        = "./securityzone_module"
    compartment_ocid              = local.compartment_ocid
    security_zone_display_name    = var.security_zone_display_name
    security_recipe_ocid          = var.security_recipe_ocid
    definedTags                   = var.project_tag.definedTags
    freeformTags                  = var.project_tag.freeformTags
}
