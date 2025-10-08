terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.54.1"
        }
    }
}

provider "aws" {
    region var.region
}


resource "aws_instance" "myserver" {
    ami           = "ami-04c08fd8aa14af291"
    instance_type = "t3.micro"

    tags = {
        Name = "SampleServer"
    }
}
