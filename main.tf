provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami = var.ami[var.OS]
  instance_type = var.instance

  provisioner "local-exec" {
        command = "echo ${self.private_ip} >> /Users/pawanrastogi/new.txt "
  
    }

      count = 4
tags = {
  Name = "Worker-Node ${count.index+1}"
}


}

  output "private_ip" {
    value = aws_instance.webserver[*].private_ip
  }
output "public_ip" {
  value = aws_instance.webserver[*].public_ip
}
