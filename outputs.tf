output "backend_public_ip" {
  description = "Public IP of backend VM"
  value       = azurerm_public_ip.main.ip_address
}

output "ssh_command" {
  description = "SSH command to connect to VM"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.main.ip_address}"
}
