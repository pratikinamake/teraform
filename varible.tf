variable "region" {

        default = "us-east-1"

}


variable "vpc-cidr" {

        default = "10.0.0.0/16"

}


variable "vpc-name" {

        default = "MY-VPC"

}


variable "publicsubnetcidr" {

        default = "10.0.1.0/24"
}


variable "public-subnet-name" {

        default = "public-subnet"

}

variable "pravate-subnet-name" {

        default = "private-subnet"

}


variable "privatesubnetcidr" {

        default = "10.0.2.0/24"
}

variable "routetablecidr" {

        default = "0.0.0.0/0"

}
