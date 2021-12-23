
variable "vpns_map" {
  type=map
  default = {
    dev = {
        name: "dev" ,
        vpn_endpoint: "vpc-111111111",
        vpc_cidr: "10.64.0.0/16",
        subnet_id:"dev-111",
        tags:{Name = "vpn-vpc-dev"
          billing = "R&D"}
    },
    staging = {
        name: "staging" ,
        vpn_endpoint: "vpc-22222222",
        vpc_cidr: "10.65.0.0/16",
        subnet_id:"staging-222",
        tags:{Name="vpn-vpc-staging"
              billing = "Product"}
    },
    production = {
      name: "production" ,
      vpn_endpoint: "vpc-33333333",
      vpc_cidr: "10.66.0.0/16",
      subnet_id:"production-333",
      tags:{Name="vpn-vpc-production"
        billing = "Operations"}
    }
  }
}


