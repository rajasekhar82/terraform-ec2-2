resource "aws_instance" "server1" {
  count = 4
  ami = "ami-03cb1380eec7cc118"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name[count.index]
  }
}
