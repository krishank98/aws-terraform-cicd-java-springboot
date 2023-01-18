terraform {
  backend "s3"{
    bucket = "terraform-bucket-projectfolder"
    key = "beanstalk-state-file/terraform.tfstate"
    region = "ap-south-1"
  }
}