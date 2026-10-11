data "aws_ec2_public_ipv4_pools" "ec2_public_ipv4_pools_lookup" {
  for_each = var.ec2_public_ipv4_pools_lookup

  region = each.value.region
  tags   = each.value.tags

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

