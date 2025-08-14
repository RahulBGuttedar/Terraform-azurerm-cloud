terraform {
  cloud {

    organization = "Rahul_B_Guttedar"

    workspaces {
      name = "localfile"
    }
  }
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
        features {}

client_id="1408a31f-46db-4ce9-84d9-51d636f116b4"
client_secret="jNW8Q~helJ3uIlVcOwYtzW-SZUk6DzuQxSS6Dbao"
tenant_id="db549104-174a-4b70-a431-932ab8ec616e"
subscription_id="e6273c17-de66-4371-9b4d-70e10906daf0"
}

variable "rgname" {
  default = "vcs-cloud-rg"
}

variable "location" {
  default = "East US"
}

resource "azurerm_resource_group" "example" {
        name = var.rgname
        location = var.location
}
