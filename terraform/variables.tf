variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for all resources."

  validation {
    condition     = contains(["us-east-1", "us-west-2"], var.region)
    error_message = "region must be us-east-1 or us-west-2."
  }
}

variable "env" {
  type        = string
  default     = "dev"
  description = "Environment variable."

  validation {
    condition     = contains(["dev", "test", "prod"], var.env)
    error_message = "Environment must be dev, test, or prod."
  }
}

variable "project" {
  type        = string
  default     = "project-ecs-fargate"
  description = "Project name."
}
