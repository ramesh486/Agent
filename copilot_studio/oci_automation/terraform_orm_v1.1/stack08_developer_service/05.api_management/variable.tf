variable "compartment_ocid" {
  type          = string
  description   = "The OCID (Oracle Cloud Identifier) of the compartment"
  default       = ""
}
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

variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}
variable "compartment_name" {
    type        = string
    default     = "network"
    description = "Compartment Name to deploy the resource"
}

variable "subnet_display_name" {
  type          = string
  default       = "example_subnet"
  description   = "The subnet in which the application is deployed"
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
  default       = ""
}

variable "certificate_private_key" {
  type          = string
  description   = "The private key in PEM format"
  default       = ""
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








