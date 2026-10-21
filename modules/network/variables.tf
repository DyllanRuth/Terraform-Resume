variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for all resources."

  validation {
    condition     = contains(["us-east-1", "us-west-2"], var.region)
    error_message = "region must be us-east-1 or us-west-2."
  }
}