resource oci_apigateway_deployment this {
  compartment_id = var.compartment_ocid
  gateway_id     = var.gateway_ocid
  path_prefix    = var.path_prefix 
  defined_tags   = var.project_tag.definedTags
  freeform_tags  = var.project_tag.freeformTags

  specification {
    request_policies {
      
      usage_plans {
       
        token_locations = var.token_locations
      }
    }
    routes {
      backend {
        type  = var.type
        url   = var.url
      }
      path    = var.path
      methods = var.methods
    }
  }
}