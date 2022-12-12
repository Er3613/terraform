provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform-demo" {
    ami = "ami-0b0dcb5067f052a63"
    instance_type = "t2.nano"
    key_name = "awsdemo"
    tags = {
        Name = "jenkins"
        Env = "dev"
    }
}

output "public-ip" {
    value = aws_instance.terraform-demo.public_ip 
}