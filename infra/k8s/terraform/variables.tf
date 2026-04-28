variable "resource_group_name" {
  default = "rg-demo-aks"
}

variable "location" {
  default = "East US"
}

variable "cluster_name" {
  default = "demo-aks"
}

variable "node_count" {
  default = 1
}

variable "vm_size" {
  default = "Standard_DC2s_v3"
}

variable "acr_name" {
  default = "demoacrdevops1"
}
