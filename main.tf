resource "aws_instance" "ourfirst" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
}

provider "aws" {
  region     = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "modules-workspace-tfstate-files" #bucketname
    key = "statefiles" #path
    region = "ap-south-1"
    # dynamodb_table = "terraform_state_lock_file"
    use_lockfile = true
  }
}