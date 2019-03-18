#
# INPUT VARIABLES
#####################################################################
variable "environment_name" {
  type        = "string"
  description = "The unique name for this environment (must be 4 alpha-numeric characters or less)."
}

variable "admin_password_prefix" {
  type        = "string"
  description = "The first characters of the administrator passwords for this environment."
}

variable "admin_username" {
  type        = "string"
  description = "The administrator user name used for resources in this environment."
}
# environment
variable "subscription_id" {
  type = "string"
  description = "The ID of the subscription to deploy TFE to."
}
variable "client_id" {
  type        = "string"
  default ="71c38d4d-fff0-4f1a-8a58-624c42b29927"}
variable "client_secret" {
  type        = "string"
  default = "9c75508e-be4e-41c8-8bb1-9d7f052581cb"} 
variable "tenant_id" {
   type        = "string"
   default = "7cacbdfd-ebad-46c0-8d1e-b7058ce44173"} 

# Resurce Group
variable "virtual_network_resource_group_name" {
  type        = "string"
  description = "The name of the Azure resource group that hosts the network for this instance."
}
variable "network_security_group_resource_group_name" {
  type = "string"
  description = "The name of the resource group containing the NSG."
}
variable "network_security_group_name" {
  type        = "string"
  description = "The ID of the NSG to associate with any network adapters."
}
# Network (Vnet/Subnet)
variable "virtual_network_name" {
  type        = "string"
  description = "The name of the VNet that hosts the network for this instance."
}
variable "subnet_name" {
  type        = "string"
  description = "The name of the subnet that hosts the network for this instance."
}

variable "tfe_fqdn" {
  type        = "string"
  description = "The user facing FQDN for this TFE environment."
}

variable "tag_organization" {
  type        = "string"
  description = "The C3_TAG organization name."
}

variable "tag_username" {
  type        = "string"
  description = "The C3_TAG user name."
}

variable "tag_email" {
  type        = "string"
  description = "The C3_TAG email address."
}

variable "tag_glaccount" {
  type        = "string"
  description = "The C3_TAG GL account."
}
