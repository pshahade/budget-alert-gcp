resource "google_project_service" "billing" {
  project = var.gcp_project_id
  service = "cloudbilling.googleapis.com"
}

resource "google_project_billing_info" "default" {
  project = var.gcp_project_id
}



