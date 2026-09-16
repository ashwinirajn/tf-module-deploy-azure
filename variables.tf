variable "resource_group_display_name" {
  type = string
}

variable "deployment_region" {
  type = string
}

variable "network_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "web_subnet_name" {
  type = string
}

variable "web_subnet_cidr" {
  type = list(string)
}

variable "web_nsg_name" {
  type = string
}

variable "server_name" {
  type = string
}

variable "server_nic_name" {
  type = string
}

variable "server_size" {
  type = string
}

variable "server_admin_user" {
  type = string
}

variable "server_admin_pass" {
  type      = string
  sensitive = true
}