provider "aws" {
    region = "eu-west-2"
}

module "cluster" {
  source = "./cluster"
  
}

module "worker_nodes" {
  source = "./worker-nodes"
  
  cluster = module.cluster.cluster_name
}

