####################### RESOURCE GROUP SETUP #######################

variable "ghaction_rg_name" {
  #description = "The name of the resource group in which to create the resources."
  type        = string
  default = "ghaction_rg"
}
####################### LOCATION SETUP #######################

variable "ghaction_location" {
  #description = "The location in which to create the resources."
  type        = string
  default = "Southeast Asia"
}

####################### TAGS SETUP #######################

variable "ghaction_tags" {
  #description = "A mapping of tags to assign to the resource group."
  type        = map(string)
  default     = {
    environment = "uat"
    project     = "ghaction"
    deployment_type = "terraform"
  }
}

####################### VNET SETUP #######################

variable "ghaction_vnet_name" {
  #description = "The name of the virtual network."
  type        = string
  default     = "ghaction-vnet"
}

variable "ghaction_vnet_address_space" {
  #description = "The address space of the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "ghaction_subnet_name" {
  #description = "The name of the subnet."
  type        = string
  default     = "ghaction-subnet"
}

variable "ghaction_subnet_address_prefix" {
  #description = "The address prefix of the subnet."
  type        = list(string)
  default     = ["10.0.0.0/24"]
}
variable "ghaction_subnet_name_02" {
  #description = "The name of the subnet."
  type        = string
  default     = "ghaction-subnet-02"
}

variable "ghaction_subnet_address_prefix_02" {
  #description = "The address prefix of the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
####################### STORAGE ACCOUNT WORKLOAD SETUP #######################

variable "storage_account_name" {
  #description = "The name of the storage account."
  type        = string
  default     = "ghaction-storage"
}
variable "storage_container_name" {
  #description = "The name of the storage container."
  type        = string
  default     = "container-ghaction"
}

