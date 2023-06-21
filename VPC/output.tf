output private_subnets {

value = module.vpc.private.private_subnets

}


output public_subnets {

value = module.vpc.public_subnets

}