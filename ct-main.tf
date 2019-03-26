#
# PROVIDERS
#####################################################################

provider "azurerm" {
/*     subscription_id = "3f783352-ce14-4c20-90e6-c75d1b1f1a2e"
    client_id       = "http://azure-cli-2019-01-22-19-06-12"
    client_secret   = "ded70432-5a8c-4d8a-9667-5138a232d4fb"
    tenant_id       = "7cacbdfd-ebad-46c0-8d1e-b7058ce44173" */

    subscription_id = "${var.subscription_id}"
    client_id       = "${var.client_id}"
    client_secret   = "${var.client_secret}"
    tenant_id       = "${var.tenant_id}"
}

provider "random" {}


#
# RESOURCE GROUP
#####################################################################
/* resource "azurerm_resource_group" "tfe" {
  name     = "tfe_${var.environment_name}"
  location = "${data.azurerm_resource_group.network.location}"

  tags = {
    C3 = "${local.c3_tag}"
    C3_SECURITY = "${local.c3_security_tag}"
  }
} */


##################################################################################
#  Resource
##################################################################################

# Create a resource group if it doesn’t exist
resource "azurerm_resource_group" "tferg" {
  name     = "tfe_CT_${var.resource_group}"
  location = "${var.location_name}"
  
tags = {
  C3 = "${local.c3_tag}"
  C3_SECURITY = "${local.c3_security_tag}"
/*         tags { environment = "${var.Tag_Demo}" } */
    }