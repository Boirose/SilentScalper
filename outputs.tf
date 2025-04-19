output "lambda_function_name" {
  description = "Name of the deployed Lambda function"
  value       = aws_lambda_function.processor.function_name
}

output "lambda_function_arn" {
  description = "ARN of the deployed Lambda function"
  value       = aws_lambda_function.processor.arn
}

output "sns_topic_arn" {
  description = "ARN of the SNS topic used for alerts"
  value       = aws_sns_topic.alerts.arn
}

output "quarantine_bucket_name" {
  description = "Name of the quarantine S3 bucket"
  value       = aws_s3_bucket.quarantinebucket.id
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = aws_dynamodb_table.scalper_table.name
}
