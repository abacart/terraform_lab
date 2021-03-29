resource "aws_eip" "eip_for_my_ec2" {
  instance = aws_instance.my_ec2.id
  vpc      = true
}


resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my_ec2.id
  allocation_id = aws_eip.eip_for_my_ec2.id
}
