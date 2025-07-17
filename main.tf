module "ec2" {
  source         = "./modules/ec2"
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  instance_count = var.instance_count
}

module "lambda_start" {
  source             = "./modules/lambda_function"
  function_name      = "server_startup"
  handler            = "start_ec2.lambda_handler"
  runtime            = var.lambda_runtime
  lambda_source      = "${path.module}/modules/lambda_function/server_startup.py"
  ec2_instance_id    = module.ec2.instance_id 
  action             = "start"
}

module "lambda_stop" {
  source             = "./modules/lambda_function"
  function_name      = "server_stop"
  handler            = "stop_ec2.lambda_handler"
  runtime            = var.lambda_runtime
  lambda_source      = "${path.module}/modules/lambda_function/server_stop.py"
  ec2_instance_id    = module.ec2.instance_id 
  action             = "stop"
}

module "scheduler_start" {
  source               = "./modules/cloudwatch_event"
  rule_name            = "start-ec2-schedule"
  schedule_expression  = var.start_cron
  lambda_function_arn  = module.lambda_start.lambda_function_arn
}

module "scheduler_stop" {
  source               = "./modules/cloudwatch_event"
  rule_name            = "stop-ec2-schedule"
  schedule_expression  = var.stop_cron
  lambda_function_arn  = module.lambda_stop.lambda_function_arn
}