variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy ocid"  
  default     = "" 
}
variable "region" {
  type        = string
  description = "Enter Region"  
  default     = "" 
}
variable "compartment_ocid" {
  type        = string
  description = "Enter compartment ocid"  
  default     = "" 
}
variable "sender_email_address" {
  type        = string
  description = "Enter sender email address"  
  default     = "" 
}
variable "email_domain_name" {
  type        = string
  description = "Enter email domain name"  
  default     = "" 
}   
variable "dkim_selector" {
     type        = string
  description = "Enter dkim selector"  
  default     = "" 
}
