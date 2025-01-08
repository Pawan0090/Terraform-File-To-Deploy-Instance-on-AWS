resource "aws_instance" "webserver" {
  ami = var.ami[var.OS]
  instance_type = var.instance

  tags = {
    Name = "My-Web-Server"
  }
}