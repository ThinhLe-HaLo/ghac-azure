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
