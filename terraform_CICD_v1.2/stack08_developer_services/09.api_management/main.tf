
############### Gateway ################################

module gateway {
    source                               = "./gateway_module"
    compartment_ocid                     = local.app_compartment_ocid
    gateway_endpoint_type                = var.gateway_endpoint_type
    gateway_display_name                 = var.gateway_display_name
    subnet_ocid                          = local.subnet_ocid 
    certificate_ocid                     = module.certificate.certificate_ocid
    project_tag                          = var.project_tag

}
############### API ################################

module api  {
    source                               = "./api_module"
    compartment_ocid                     = local.app_compartment_ocid
    api_content                          = var.api_content
    api_display_name                     = var.api_display_name
    project_tag                          = var.project_tag
   
}
############### Certificate ################################

module certificate {
    source                               = "./certificate_module"
    certificate_certificate              = var.certificate_certificate
    compartment_ocid                     = local.app_compartment_ocid
    certificate_private_key              = var.certificate_private_key
    certificate_display_name             = var.certificate_display_name
    project_tag                          = var.project_tag

}

############### Subscriber ################################

module subscriber {
   source                      = "./subscriber_module"
   subscriber_clients_name     = var.subscriber_clients_name
   subscriber_clients_token    = var.subscriber_clients_token
   compartment_ocid            = local.app_compartment_ocid
   subscriber_display_name     = var.subscriber_display_name
   subscriber_usage_plans      = [module.usage_plan.usage_plan_ocid]
   project_tag                 = var.project_tag
  
}

############### Usage plans ################################

module usage_plan {
     source                                               = "./usage_module"
     compartment_ocid                                     = local.app_compartment_ocid
     usage_plan_entitlements_name                         = var.usage_plan_entitlements_name
     usage_plan_entitlements_description                  = var.usage_plan_entitlements_description
     usage_plan_entitlements_quota_operation_on_breach    = var.usage_plan_entitlements_quota_operation_on_breach
     usage_plan_entitlements_quota_reset_policy           = var.usage_plan_entitlements_quota_reset_policy
     usage_plan_entitlements_quota_unit                   = var.usage_plan_entitlements_quota_unit
     usage_plan_entitlements_quota_value                  = var.usage_plan_entitlements_quota_value
     usage_plan_entitlements_rate_limit_unit              = var.usage_plan_entitlements_rate_limit_unit
     usage_plan_entitlements_rate_limit_value             = var.usage_plan_entitlements_rate_limit_value       
     deployment_ocid                                      = module.apigateway_deployment.deployment_ocid
     project_tag                                          = var.project_tag

    }

############### Gateway Deployment ################################

module apigateway_deployment  {
      source                  = "./gateway_deployment_module"
      compartment_ocid        = local.app_compartment_ocid
      gateway_ocid            = module.gateway.gateway_ocid
      path_prefix             = var.path_prefix
      token_locations         = var.token_locations
      type                    = var.type
      url                     = var.url
      path                    = var.path
      methods                 = var.methods
      project_tag             = var.project_tag

}
