output "vm_id" {
  value = azurerm_linux_virtual_machine.web_vm.id
}

output "private_ip" {
  value = azurerm_network_interface.web_nic.private_ip_address
}