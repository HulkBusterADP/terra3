provider "aws" {
region = "us-east-1"
access_key = "AKIA2TJD4BE6IZNPXTDK"
secret_key = "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"
}

resource "aws_instance" "web" {
ami         = "ami-00c39f71452c08778"
instance_type = "t2.micro"
key_name      = "project"
count         = 3
tags     =      {
Name      = "vmrterraform"
  }
}