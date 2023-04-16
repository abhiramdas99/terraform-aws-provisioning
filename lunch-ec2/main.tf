provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "intro" {
  ami               = "ami-02eb7a4783e7e9317"
  instance_type     = "t2.micro"
  key_name          = "pem_keypair_for_all_ubuntu_machine"
  tags = {
    Name = "terrform_ec2_web"
  }
}
