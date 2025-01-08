variable "AWS_ACCESS_KEY" {
    description = "Hi Please enter your AWS Access Key " 
    sensitive = true
}

variable "AWS_SECRET_KEY" {
  description = "Please Enter your Secret Key"
  sensitive = true
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "OS" {
  description = "Please Enter the OS of from (linux , ubuntu , debian)"
  #default = "ubuntu"
}

variable "instance" {
  default = "t2.micro"
}

variable "ami" {
  default = {
    linux="ami-01816d07b1128cd2d"
    ubuntu="ami-0e2c8caa4b6378d8c"
    debian="ami-064519b8c76274859"
  }
}