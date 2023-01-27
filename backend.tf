terraform {
  backend "s3"{
    bucket = "terraform-bucket-projectfolder"
    key = "terra/terraform.tfstate"
    region     = "ap-south-1"
  }
}