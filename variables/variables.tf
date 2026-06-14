variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
    tags = string
    description = ami id 
}

variable "instance_type" {
    default = "t.3 micro"
}

variable "instance_name" {
    type = map( string )
    default = {
        name = "roboshop"
        purpose = "ec2 instance creation"
        
    }
}

variable "sg_name" {
    default = "allow-all"
}

variable "sg_display-name" {
    default= {
        name = "allow_all"
    }
}

variable "from_port" {
    default = "0"
}
variable "to_port" {
    default = "0"
}

variable "cidr_bllocks" {
    default = "["0.0.0.0/0"]"
}






