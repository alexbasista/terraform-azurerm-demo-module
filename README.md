# terraform-azurerm-demo-module
Basic Terraform + Azure module for demonstration purposes within Terraform Cloud/Terraform Enterprise.

## Usage

```hcl
module "vnet" {
  source  = "app.terraform.io/terraform-tom/demo-module/azurerm"
  version = "0.2.0"

  resource_group_name = "abasista-tfe-pmr-test"
  location            = "East US 2"
  common_tags         = {
      "env"       = "test"
      "terraform" = "cloud"
      "owner"     = "abasista"
  }

  vnet_name      = "alex-vnet-from-module"
  vnet_cidr      = ["10.0.0.0/16"]
  vm_subnet_cidr = "10.0.1.0/24"
  db_subnet_cidr = "10.0.10.0/24"
}
```
