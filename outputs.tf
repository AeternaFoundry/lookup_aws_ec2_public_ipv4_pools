output "ec2_public_ipv4_pools_lookup_id" {
  description = "Map of id values across all ec2_public_ipv4_pools_lookup, keyed the same as var.ec2_public_ipv4_pools_lookup"
  value       = { for k, v in data.aws_ec2_public_ipv4_pools.ec2_public_ipv4_pools_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_public_ipv4_pools_lookup_filter" {
  description = "Map of filter values across all ec2_public_ipv4_pools_lookup, keyed the same as var.ec2_public_ipv4_pools_lookup"
  value       = { for k, v in data.aws_ec2_public_ipv4_pools.ec2_public_ipv4_pools_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ec2_public_ipv4_pools_lookup_pool_ids" {
  description = "Map of pool_ids values across all ec2_public_ipv4_pools_lookup, keyed the same as var.ec2_public_ipv4_pools_lookup"
  value       = { for k, v in data.aws_ec2_public_ipv4_pools.ec2_public_ipv4_pools_lookup : k => v.pool_ids if v.pool_ids != null && length(v.pool_ids) > 0 }
}
output "ec2_public_ipv4_pools_lookup_region" {
  description = "Map of region values across all ec2_public_ipv4_pools_lookup, keyed the same as var.ec2_public_ipv4_pools_lookup"
  value       = { for k, v in data.aws_ec2_public_ipv4_pools.ec2_public_ipv4_pools_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_public_ipv4_pools_lookup_tags" {
  description = "Map of tags values across all ec2_public_ipv4_pools_lookup, keyed the same as var.ec2_public_ipv4_pools_lookup"
  value       = { for k, v in data.aws_ec2_public_ipv4_pools.ec2_public_ipv4_pools_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

