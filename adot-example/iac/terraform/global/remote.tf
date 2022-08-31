terraform {
  backend "local" {
    path = "tfstate/rt-global.tfstate"
  }
}