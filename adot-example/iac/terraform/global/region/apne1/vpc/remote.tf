terraform {
  backend "local" {
    path = "tfstate/rt-vpc.tfstate"
  }
}