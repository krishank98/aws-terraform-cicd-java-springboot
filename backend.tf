terraform {
  backend "s3"{
    bucket = "terraform-bucket-projectfolder"
    key = "terra1/terraform.tfstate"
    region     = "ap-south-1"
  }
}