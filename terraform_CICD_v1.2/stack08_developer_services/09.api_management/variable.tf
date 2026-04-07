###### Common Variables ##########

variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}
variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}

variable "app_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}
variable "network_compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable "subnet_display_name" {
  type          = string
  default       = ""
  description   = "The subnet in which the application is deployed"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "API_management"
        }
      freeformTags = {}
  }
}

################ gateway ##################

variable "gateway_endpoint_type" {
  type          = string
  default       = "PRIVATE"
  description   = "The type of endpoint for the gateway. Possible values are PUBLIC or PRIVATE."
}
variable "gateway_display_name" {
  type          = string
  default       = "example_gateway"
  description   = "The display name of the gateway."
}


############### API ######################

variable "api_content" {
  type          = string
  default       = "openapi: 3.0.0\ninfo:\n  version: 1.0.0\n  title: Test API\n  license:\n    name: MIT\npaths:\n  /ping:\n    get:\n      responses:\n        '200':\n          description: OK"
  description   = "The content of the API definition in OpenAPI format."
}

variable "api_display_name" {
  type          = string
  default       = "test API definiton"
  description   = "The display name of the API definition."
}

############# Certificate #################

variable "certificate_certificate" {
  type          = string
  description   = "The certificate in PEM format"
  default       = "-----BEGIN CERTIFICATE-----\n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\nW51PheNtTRNV9YR8WPLtvvU6Fw==\n-----END CERTIFICATE-----"
}

variable "certificate_private_key" {
  type          = string
  description   = "The private key in PEM format"
  default       = "-----BEGIN PRIVATE KEY-----\n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\ne/uJnIk+fV0akVOhlnOcHibBm9i8xRo=\n-----END PRIVATE KEY-----"
}
variable "certificate_display_name" {
  type          = string
  description   = "The display name of the certificate"
  default       = "Example_certificate"
}


################# Subscriber ################

variable "subscriber_clients_name" {
  type          = string
  default       = "subscriber_clients_name"
  description   = "The name of the subscriber client."
}
variable "subscriber_clients_token" {
  type          = string
  default       = "subscriber_clients_token"
  description   = "The token associated with the subscriber client."
}

variable "subscriber_display_name" {
  type          = string
  default       = "Example_subscriber"
  description   = "The display name of the subscriber."
}


############### Usage plan #################


variable "usage_plan_entitlements_name" {
  default       = "usagePlanEntitlementsName" 
  type          = string
  description   = "The name of the usage plan entitlement."
}

variable "usage_plan_entitlements_description" {
  default       = "usage_plan_entitlements_description" 
  type          = string
  description   = "The description of the usage plan entitlement."
}

variable "usage_plan_entitlements_quota_operation_on_breach" {
  default       = "REJECT" 
  type          = string
  description   = "The operation to perform when the quota limit is breached."
}

variable "usage_plan_entitlements_quota_reset_policy" {
  default       = "CALENDAR" 
  type          = string
  description   = "The reset policy for the quota limit."
}

variable "usage_plan_entitlements_quota_unit" {
  default       = "MINUTE" 
  type          = string
  description   = "The unit of measurement for the quota limit."
}

variable "usage_plan_entitlements_quota_value" {
  default       = 10
  type          = number
  description   = "The value of the quota limit."
}

variable "usage_plan_entitlements_rate_limit_unit" {
  default       = "SECOND" 
  type          = string
  description   = "The unit of measurement for the rate limit."
}

variable "usage_plan_entitlements_rate_limit_value" {
  default       = 10
  type          = number
  description   = "The value of the rate limit."
}

############# gateway deployment ###################


variable "path_prefix" {
  description = "The prefix added to the path of the resource."
  type        = string
  default     = "/"
}

variable "token_locations" {
  description = "The token Location."
  type        = list(string)
  default     = ["request.headers[apiKeyLocation]"]
}
variable "type" {
  description = "The type of the backend"
  type        = string
  default     = "HTTP_BACKEND"
}
variable "url" {
  description = "The URL of the backend resource."
  type        = string
  default     = "https://api.weather.gov"
}

variable "path" {
  description = "The path of the resource."
  type        = string
  default     = "/hello"
}

variable "methods" {
  description = "The list of HTTP methods supported by the resource."
  type        = list(string)
  default     = ["GET"]
}








