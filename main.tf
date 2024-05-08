resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.cidr_block
    gateway_id = var.internet_gateway != null ? var.internet_gateway : null
    nat_gateway_id = var.nat_gateway != null ? var.nat_gateway : null
  }

  tags = merge(var.additional_tags, local.default_tags)
}

resource "aws_route_table_association" "this" {
  count = length(var.subnet_ids)

  route_table_id = aws_route_table.this.id
  subnet_id      = var.subnet_ids[count.index]
}
