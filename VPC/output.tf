output private_subnets {

value = module.vpc.private.private_subnets

}


output public_subnets {

value = module.vpc.public_subnets

}

output azs { 

value = module.vpc.azs

}

output vpc_id {
value = module.vpc.vpc_id


}