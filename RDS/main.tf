data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "yavuzzi"
    workspaces = {
      name = "vpc-prod"
    }
  }
}