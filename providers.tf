# This is is my 1st change

terraform {
  # cloud {
  #   organization = "SteveJohn"

  #   workspaces {
  #     name = "terra-house-1"
  #   }
  # }
  required_providers {
    # 9/26/2023 - No longer need random as the import does not reflect on state file
    # random = {
    #   source = "hashicorp/random" #Provider
    #   version = "3.5.1"
    # }
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }
  }
}


provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}
