terraform {
    required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  cloud {
    organization = "SteveJohn"
    workspaces {
      name = "terra-house-1"
    }
  }
}

provider "terratowns" {
  endpoint = "https://terratowns.cloud/api"
  user_uuid=var.teacherseat_user_uuid
  token=var.terratowns_access_token
}

module "home_dune_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid=var.teacherseat_user_uuid
  public_path=var.dune.public_path
  #bucket_name=var.bucket_name
  content_version=var.dune.content_version

}

resource "terratowns_home" "dune" {
  name = "Dune (2021)"
  description = <<DESCRIPTION
A noble family becomes embroiled in a war for control over the galaxy's
most valuable asset while its heir becomes troubled by visions of a dark future. Director - Denis Villeneuve
DESCRIPTION
  domain_name = module.home_dune_hosting.domain_name
  #domain_name = "3fdq3gz.cloudfront.net"
  town = "video-valley"
  content_version = var.dune.content_version
}



# module "home_spurs_hosting" {
#   source = "./modules/terrahome_aws"
#   user_uuid=var.teacherseat_user_uuid
#   public_path=var.spurs.public_path
#   #bucket_name=var.bucket_name
#   content_version=var.spurs.content_version

# }

# resource "terratowns_home" "spurs" {
#   name = "Tottenham Hotspurs"
#   description = <<DESCRIPTION
# Premier League.
# DESCRIPTION
#   domain_name = module.home_spurs_hosting.cloudfront_url
#   #domain_name = "3fdq3gz.cloudfront.net"
#   town = "missingo"
#   content_version = var.spurs.content_version
# }