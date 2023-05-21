# Resource: aws_route_table_association
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

resource "aws_route_table_association" "riopublic1" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.riopublic_1.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.riopublic.id
}

resource "aws_route_table_association" "riopublic2" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.riopublic_2.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.riopublic.id
}

resource "aws_route_table_association" "rioprivate1" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.rioprivate_1.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.rioprivate1.id
}

resource "aws_route_table_association" "rioprivate2" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.rioprivate_2.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.rioprivate2.id
}