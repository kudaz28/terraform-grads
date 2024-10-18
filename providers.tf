provider "google" {
  credentials = file("credentials.json")

  project = "lbg-mea-grad-programme-c2"
  region  = "europe-west2"
  zone    = "europe-west2-a"
}