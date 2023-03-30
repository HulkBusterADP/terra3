provider "aws" {
region = "us-east-1"
access_key = "AKIA2TJD4BE6E63Q3M3P"
secret_key = "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"
}

resource "aws_instance" "web" {
ami         = "ami-00c39f71452c08778"
instance_type = "t2.small"
key_name      = "project"
count         = 3
tags     =      {
Name      = "vmrterraform"
  }
}
