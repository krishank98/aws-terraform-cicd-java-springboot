provider "aws" {
    region = "eu-west-1"
    profile = "demo"
}

provider "github" {
    token = local.github_token
    organization = local.github_username
}

provider "template " {}
provider "random" {}
provider "null" {}