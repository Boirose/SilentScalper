variable "default_tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Project     = "SilentScalper"
  }
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "the default aws region for our project"
}

variable "environment" {
    type        = string
    default     = "dev"
    description = "the environment for our project"
}

variable "api_gateway_name" {
    type        = string
    default     = "silent_scalper_api"
    description = "name of the api_http gateway"
}

variable "quarantine_bucket_name" {
    type        = string
    default = "silent-scalper-quarantinebucket"
    description = "the name of the quarantine bucket to upload to"
}

variable "dynamodb_table_name"{
    type        = string
    default     = "silent_scalper-data"
    description = "the name of the dynamodb table to use"
}

variable "lambda_funtion_name" {
    type        = string
    default     = "silent_scalper-processor"
    description = "the name of the lambda function to use"
}

variable "sns_topic_name" {
  description = "The name of the SNS topic for alerts"
  type        = string
  default     = "silent-scalper-alerts"
}