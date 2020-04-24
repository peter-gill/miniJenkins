provider "aws" {
  region     = "us-east-1"
}

data "aws_ami" "linux2_ami" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
  }
}

resource "aws_security_group" "miniJenkins_allow_http_ssh" {
  name        = "miniJenkins_allow_http_ssh"
  description = "Allow HTTP and SSH inbound traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
