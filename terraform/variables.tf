variable "proxmox_api_url" {
  description = "Proxmox API URL (e.g. https://192.168.1.10:8006/api2/json)"
  type        = string
}

variable "proxmox_user" {
  description = "Proxmox API user (e.g. root@pam)"
  type        = string
  default     = "root@pam"
}

variable "proxmox_password" {
  description = "Proxmox API password"
  type        = string
  sensitive   = true
}

variable "proxmox_node" {
  description = "Proxmox node name to deploy VMs on"
  type        = string
  default     = "pve"
}

variable "ubuntu_template" {
  description = "Name of the Ubuntu 24.04 cloud-init template in Proxmox"
  type        = string
  default     = "ubuntu-24.04-cloud"
}

variable "storage_pool" {
  description = "Proxmox storage pool for VM disks"
  type        = string
  default     = "local-lvm"
}

variable "web01_ip" {
  description = "Static IP for web-01"
  type        = string
  default     = "192.168.1.101"
}

variable "db01_ip" {
  description = "Static IP for db-01"
  type        = string
  default     = "192.168.1.102"
}

variable "monitor01_ip" {
  description = "Static IP for monitor-01"
  type        = string
  default     = "192.168.1.103"
}

variable "gateway" {
  description = "Default gateway for the VMs"
  type        = string
  default     = "192.168.1.1"
}

variable "dns_server" {
  description = "DNS server for the VMs"
  type        = string
  default     = "8.8.8.8"
}

variable "ssh_public_key" {
  description = "SSH public key to inject into VMs for access"
  type        = string
}
