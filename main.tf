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
  token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
}

resource "terratowns_home" "home" {
  name = "Dune (2021)"
  description = <<DESCRIPTION
A noble family becomes embroiled in a war for control over the galaxy's
most valuable asset while its heir becomes troubled by visions of a dark future. Director - Denis Villeneuve
DESCRIPTION
  #domain_name = module.terrahouse_aws.cloudfront_url
  domain_name = "3fdq3gz.cloudfront.net"
  town = "video-valley"
  content_version = 1
}