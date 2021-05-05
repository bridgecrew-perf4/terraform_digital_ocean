resource "digitalocean_tag" "env" {
  name = "dev"
}

resource "digitalocean_tag" "project" {
  name = "wordpress"
}

resource "digitalocean_tag" "team" {
  name = "developers"
}

resource "digitalocean_tag" "web" {
  name = "application"
}

resource "digitalocean_tag" "db" {
  name = "database"
}