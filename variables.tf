variable "vm_name" {
  type        = string
  default     = "vm"
  description = "The name to give to the VM(s)"
}

variable "vm_cpu_count" {
  type        = number
  default     = 2
  description = "The CPU count of the VM(s)"
}

variable "vm_memory_size_gib" {
  type        = number
  default     = 4
  description = "The memory size of the VM(s) in GiB"
}

variable "vm_root_disk_size_gib" {
  type        = number
  default     = 48
  description = "Root disk size in GiB. Stored as qcow2 in the VM's libvirt storage pool."
}

variable "vm_data_disk_size_gib" {
  type        = number
  default     = null
  description = "Optional data disk size in GiB. Creates a ZFS zvol on the 'zvols' pool. Omit or set null for no data disk."
}

variable "vm_console_user" {
  type        = string
  description = "The username of the console user"
}

variable "vm_console_password" {
  type        = string
  sensitive   = true
  description = "The password of the console user"
}

variable "vm_automation_user" {
  type        = string
  description = "The username of the remote SSH user"
}

variable "vm_automation_user_pubkey" {
  type        = string
  description = "The SSH public key of the remote SSH user"
}

variable "vm_cloud_image_url" {
  type        = string
  description = "The URL to the cloud image suitable for the selected VM operating system"
}

variable "pci_devices" {
  type = list(object({
    domain   = number
    bus      = number
    slot     = number
    function = number
  }))
  default     = []
  description = "List of PCI BDF (Bus, Device, Function) address components for passthrough, including domain."
}