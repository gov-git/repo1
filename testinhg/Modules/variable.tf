variable "resource_group" {
 type = string
 default = "" 
}

variable "location" {
  type = string
  default = ""
}

variable "storage_account01" {
  type = string
  default = ""
}

variable "storage_account02" {
  type = string
  default = ""
}

variable "account_tier" {
  type = string
  default = ""
}

variable "sku" {
  type = string
  default = ""
}

variable "tags" {
  type = map
}
