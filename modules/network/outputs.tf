output "vnet_name" {
  value = azurerm_virtual_network.web_vnet.name
}

output "subnet_id" {
  value = azurerm_subnet.web_subnet.id
}