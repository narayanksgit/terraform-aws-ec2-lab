resource "aws_security_group" "terraform_sg" {
  name        = "terraform-devops-lab-sg"
  description = "Security group for Terraform DevOps lab"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-devops-lab-sg"
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.terraform_sg.id]

  tags = {
    Name = "terraform-web-server"
  }
}
