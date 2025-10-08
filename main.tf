terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.15.0"
        }
    }
}

provider "aws" {
    region var.region
}


resource "aws_instance" "myserver" {
    ami           = "ami- 0c0e147c706360bd7"
    instance_type = "t3.nano"

    tags = {
        Name = "SampleServer"
    }
}
