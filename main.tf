data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

resource "aws_instance" "node1" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "node1"
  }

resource "aws_instance" "node2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type 

  tags = {
    Name = "Node2"
  }

}
