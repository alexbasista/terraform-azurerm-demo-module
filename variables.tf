#-------------------------------------------------------------------------
# Common
#-------------------------------------------------------------------------
variable "resource_group_name" {
  type        = string
  description = "Name of Azure Resource Group to create."
}

variable "location" {
  type        = string
  description = "Azure region to provision resources in."
  default     = "East US 2"
}

variable "common_tags" {
  type        = map(string)
  description = "Map of common tags for taggable Azure resources."
  default     = {}
}

#-------------------------------------------------------------------------
# VNet
#-------------------------------------------------------------------------
variable "vnet_name" {
  type        = string
  description = "Name of VNET to create."
}

variable "vnet_cidr" {
  type        = list(string)
  description = "CIDR block address space for VNet."
  default     = ["10.0.0.0/16"]
}

variable "vm_subnet_cidr" {
  type        = string
  description = "CIDR block for VM subnet."
  default     = "10.0.1.0/24"
}