# Azure Variables
variable "image_name" {
  description = "The name of the image to deploy"
  type        = string
}

variable "acr_server" {
  description = "The Azure Container Registry server"
  type        = string
}

variable "acr_username" {
  description = "The Azure Container Registry username"
  type        = string
  sensitive   = true
}

variable "acr_password" {
  description = "The Azure Container Registry password"
  type        = string
  sensitive   = true
}

variable "acr_rg" {
  description = "The Azure Container Registry resource group"
  type        = string
}

variable "token" {
  description = "The GitHub token"
  type        = string
}

# GitHub Variables
variable "org_name" {
  description = "The name of the GitHub organization"
  type        = string
}
