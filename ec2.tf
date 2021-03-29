resource "aws_instance" "my_ec2" {
  ami           = "ami-0575fc648136871a1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  tags = {
    Name = "Terrafrom_ec2_test"
  }
}
