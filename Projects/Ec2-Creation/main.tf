provider "aws" {

    region = "us-east-2"
  
}

resource "aws_instance" "sirajtest" {
    instance_type = "t2.micro"
    ami = "ami-037774efca2da0726"
    subnet_id = "subnet-0dd80cd40c466693d"
  
}
output "public-ip-address"{

value = aws_instance.sirajtest.public_ip
}
