provider "aws" {
  region = "us-east-1"
  access_key = "AKIA2KAAF7XHJUJXQ7DF"
  secret_key = "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"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0affd4508a5d2481b"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "vprofile-prod-key"
  vpc_security_group_ids = ["sg-00a7fdf11efbd18ad"]
  tags = {
    Name = "dove-instance"
  }
}
