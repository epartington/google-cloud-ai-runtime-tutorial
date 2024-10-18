# -------------------------------------------------------------------------------------
# Required variables
# -------------------------------------------------------------------------------------

variable "gcp_project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "gcp_region" {
  description = "GCP Region"
  type        = string
}

variable "gcp_zone" {
  default = null
  description = "GCP zone with GCP Region"
  type = string

}

variable "openai_api_key" {
  description = "Your OpenAI API key."
  type        = string
}

variable "allowed_ips" {
  description = "A list of IP addresses allowed to access the public IPs of the workloads."
  type        = list(string)
}