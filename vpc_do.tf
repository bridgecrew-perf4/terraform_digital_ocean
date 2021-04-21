resource "digitalocean_vpc" "my-vpc" {
  name   = "project-network"
  region = "nyc1"
  ip_range = "10.0.0.0/24"
}