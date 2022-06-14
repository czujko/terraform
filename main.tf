terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.20.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}

module "virtual-machine" {
  source = "./modules/virtual-machine"
}

module "bucket" {
  source = "./modules/bucket"
}

module "gke" {
  source = "./modules/gke"
}
