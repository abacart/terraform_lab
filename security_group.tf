
resource "aws_security_group" "allow_https" {
  name        = "allow_https"
  description = "Allow HTTPs inbound traffic"

  ingress {
    description = "HTTPs from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_https"
  }
}
