terraform {
  backend "s3"{
    bucket = "terraform-bucket-projectfolder"
    key = "terra-prod/terraform.tfstate"
    region     = "ap-south-1"
  }
}