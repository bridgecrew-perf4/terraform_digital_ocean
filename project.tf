resource "digitalocean_project" "terraform" {
  name        = "${var.env}-terraform"
  description = "A project to represent development resources."
  purpose     = "Web Application"
  environment = "Development"
  resources   = [digitalocean_vpc.my-vpc.urn, digitalocean_droplet.web.urn, digitalocean_droplet.db.urn]
}