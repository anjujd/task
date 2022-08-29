terraform {
  cloud {
    hostname = "terraform-enterprise.eastus.cloudapp.azure.com"
    organization = "EY"

    workspaces {
      name = "Anju-test-workspace"
    }
  }
    required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.16.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_automation_account" "example" {
  name                = "example-account"
  location            = "West Europe"
  resource_group_name = "example-resources"
  sku_name            = "Basic"

  tags = {
  cost_center = "__COST_CENTER__"
  ppmc_id     = "__PPMC_ID__"
  toc         = "__TOC__"
  usage_id    = "__USAGE_ID__"
  env_type    = "_ENV_TYPE__"
  exp_date    = "__EXP_DATE__"
  endpoint    = "__ENDPOINT__"
  sd_period   = "___SD_PERIOD__"
  }
}

