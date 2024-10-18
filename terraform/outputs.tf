# -------------------------------------------------------------------------------------
# Outputs
# -------------------------------------------------------------------------------------
output "flow_logs_bucket" {
  value = google_storage_bucket.gcs.name
}

output "gemini_app_url" {
  value = "http://${google_compute_instance.ai.network_interface[0].access_config[0].nat_ip}:8080"
}

output "openai_app_url" {
  value = "http://${google_compute_instance.ai.network_interface[0].access_config[0].nat_ip}:80"
}

output "SET_ENV_VARS" {
  value = <<EOF
export CLUSTER_NAME=${module.gke.name}
export PROJECT_ID=${local.project_id}
export REGION=${local.region}
export ZONE=${google_compute_instance.ai.zone}
EOF
}
