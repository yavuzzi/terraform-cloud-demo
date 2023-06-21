data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "yavuzzi"
    workspaces = {
      name = "vpc-prod"
    }
  }
}



resource "aws_db_subnet_group" "default" {
  name       = "project-db-subnet-group"
  subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnets
}