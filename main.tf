terraform {
    required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  # cloud {
  #   organization = "SteveJohn"
  #   workspaces {
  #     name = "terra-house-1"
  #   }
  # }
}

# module "terrahouse_aws" {
#   source = "./modules/terrahouse_aws"
#   user_uuid=var.user_uuid
#   bucket_name=var.bucket_name
#   index_html_filepath = var.index_html_filepath
#   error_html_filepath = var.error_html_filepath
#   content_version = var.content_version
#   assets_path = var.assets_path
# }

provider "terratowns" {
  endpoint = "http://localhost:4567/api"
  user_uuid="9a92407d-a511-40ef-a6bf-44e615cf0e03" 
  token="8f470175-0488-4751-af5d-c81132cbac41"
}