module "bucket" {
  source  = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version = "~> 1.3"

  name       = "ndynmate-bucket"
  project_id = var.project_id
  location   = var.location
}