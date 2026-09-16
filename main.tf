module "rg" {
  source      = "./modules/rg"
  rg_name     = var.resource_group_display_name # module's word  = root's word
  rg_location = var.deployment_region           # module's word  = root's word
}

module "network" {
  source              = "./modules/network"
  vnet_name           = var.network_name
  address_space       = var.vnet_address_space
  subnet_name         = var.web_subnet_name
  subnet_cidr         = var.web_subnet_cidr
  nsg_name            = var.web_nsg_name
  location            = module.rg.location
  resource_group_name = module.rg.rg_name
}

module "compute" {
  source              = "./modules/compute"
  vm_name             = var.server_name
  nic_name            = var.server_nic_name
  vm_size             = var.server_size
  admin_username      = var.server_admin_user
  admin_password      = var.server_admin_pass
  location            = module.rg.location
  resource_group_name = module.rg.rg_name
  subnet_id           = module.network.subnet_id
}