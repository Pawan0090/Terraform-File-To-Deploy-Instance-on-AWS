variable "OS" {
  description = "Please Enter the OS of from (linux , ubuntu or 22.04 , debian)"
  #default = "ubuntu"
}

variable "instance" {
  default = "t2.medium"
}

variable "ami" {
  default = {
    linux  = "ami-01816d07b1128cd2d"
    ubuntu = "ami-0e2c8caa4b6378d8c"
    ubuntu22 = "ami-005fc0f236362e99f"
    debian = "ami-064519b8c76274859"
  }
}
