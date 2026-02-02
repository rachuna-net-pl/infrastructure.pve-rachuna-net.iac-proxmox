module "cluster" {
  source = "./cluster/"
}

module "containers_templates" {
  source = "./containers_templates/"
}

module "machines" {
  source = "./machines/"
}