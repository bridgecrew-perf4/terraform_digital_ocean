resource "digitalocean_tag" "env" {
  name = "dev"
}

resource "digitalocean_tag" "project" {
  name = "application"
}

resource "digitalocean_tag" "team" {
  name = "developers"
}