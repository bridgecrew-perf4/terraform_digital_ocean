resource "digitalocean_droplet" "web" {
  image  = data.digitalocean_image.centos_image.id #data.digitalocean_image.ubuntu_image.id
  name   = "${var.env}-web"
  region = var.region_for_droplet
  size   = var.droplet_size
  ssh_keys = [data.digitalocean_ssh_key.ssh-key.id]
  #vpc_uuid = digitalocean_vpc.my-vpc.id
  tags   = [digitalocean_tag.env.id, digitalocean_tag.project.id, digitalocean_tag.web.id, digitalocean_tag.team.id]
}

resource "digitalocean_droplet" "db" {
  image  = data.digitalocean_image.centos_image.id
  name   = "${var.env}-db"
  region = var.region_for_droplet
  size   = var.droplet_size
  ssh_keys = [data.digitalocean_ssh_key.ssh-key.id]
  #vpc_uuid = digitalocean_vpc.my-vpc.id
  tags   = [digitalocean_tag.env.id, digitalocean_tag.project.id, digitalocean_tag.db.id, digitalocean_tag.team.id]  
}