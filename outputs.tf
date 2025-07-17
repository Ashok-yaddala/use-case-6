output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "lambda_start_arn" {
  value = module.lambda_start.lambda_function_arn
}

output "lambda_stop_arn" {
  value = module.lambda_stop.lambda_function_arn
}