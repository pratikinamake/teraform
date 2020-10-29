### Create the VPC ########

resource "aws_vpc" "myvpc" {

	cidr_block = "${var.vpc-cidr}"
	enable_dns_hostnames = "true"
	enable_dns_support= "true"
	instance_tenancy = "default"
	tags = {	
		Name = "${var.vpc-name}"
	}
}


######## Create the subnet ###################


resource "aws_subnet" "public-subnet" {
	
	vpc_id = aws_vpc.myvpc.id
	cidr_block = "${var.publicsubnetcidr}"
	tags = {
		Name = "${var.public-subnet-name}"

 	}

}


resource "aws_subnet" "private-subnet" {

        vpc_id = aws_vpc.myvpc.id
        cidr_block = "${var.privatesubnetcidr}"
        tags = {
                Name = "${var.pravate-subnet-name}"  

        }

}



######### Internet_gateway ###############################	

resource "aws_internet_gateway" "mygateway" {

	vpc_id = aws_vpc.myvpc.id 
	tags = {
		Name = "mygateway"

	}
}


#############Route_table################################

resource "aws_route_table" "myroutetable" {

	vpc_id = aws_vpc.myvpc.id 
	route {
		gateway_id = aws_internet_gateway.mygateway.id
		cidr_block = "${var.routetablecidr}"
       }
	
	tags = {
		Name = "MYroute table "
	}

} 
	



