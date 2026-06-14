variable "ami_id" {
  default     = "ami-0220d79f3f480ecf5"
  type        = string
  description = "ami id of instance"
}

variable "instance_type" {
  default = "t.3 micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    name    = "roboshop"
    purpose = "ec2 instance creation"

  }
}

variable "sg_name" {
  default = "allow-all"
}

variable "sg_tags" {
  default = {
    name = "allow_all"
  }
}

variable "from_port" {
  type    = number
  default = 0
}
variable "to_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  type = list(string)

  default = ["0.0.0.0/0"]
}

variable "environment" {
  default = "dev"
}







