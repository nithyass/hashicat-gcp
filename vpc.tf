module "network" {
  source  = "app.terraform.io/nithyashyamsundar/network/google"
  version = "3.4.0"
  # insert required variables here
  project_id   = var.project
  network_name = "nithya-vpc"
  #routing_mode = "GLOBAL"
  subnets = [
         {
            subnet_name           = "nithya-subnet"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        }
    ]

}
