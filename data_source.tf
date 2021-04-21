data "digitalocean_image" "ubuntu_image" {
  slug = "ubuntu-18-04-x64"
}

data "digitalocean_image" "centos_image" {
  slug = "centos-7-x64"
}