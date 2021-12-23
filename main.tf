# Routes for AWS peered VPCs

resource "aws_ec2_client_vpn_route" "vpns" {
  for_each = var.vpns_map
  target_vpc_subnet_id = each.value.subnet_id
  destination_cidr_block = each.value.vpc_cidr
  client_vpn_endpoint_id = each.value.vpn_endpoint
  description =format("%s %s=%s",
    each.value.tags.Name,
    keys(each.value.tags)[1],
    each.value.tags.billing) 
}






