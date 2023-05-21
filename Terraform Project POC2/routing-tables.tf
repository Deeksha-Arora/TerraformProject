# Resource: aws_route_table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

resource "aws_route_table" "riopublic" {
  # The VPC ID.
  vpc_id = aws_vpc.riomain.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC internet gateway or a virtual private gateway.
    gateway_id = aws_internet_gateway.riomain.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "riopublic"
  }
}

resource "aws_route_table" "rioprivate1" {
  # The VPC ID.
  vpc_id = aws_vpc.riomain.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC NAT gateway.
    nat_gateway_id = aws_nat_gateway.riogw1.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "rioprivate1"
  }
}

resource "aws_route_table" "rioprivate2" {
  # The VPC ID.
  vpc_id = aws_vpc.riomain.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC NAT gateway.
    nat_gateway_id = aws_nat_gateway.riogw2.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "rioprivate2"
  }
}