terraform {
  backend "gcs"{
    bucket      = "ndynmate-bucket"
    prefix      = "dev"
    credentials = "terraform-349908-e763902788b1.json"
  }
}