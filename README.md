## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | ~> 2.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./modules/ec2 | n/a |
| <a name="module_lambda_start"></a> [lambda\_start](#module\_lambda\_start) | ./modules/lambda_function | n/a |
| <a name="module_lambda_stop"></a> [lambda\_stop](#module\_lambda\_stop) | ./modules/lambda_function | n/a |
| <a name="module_scheduler_start"></a> [scheduler\_start](#module\_scheduler\_start) | ./modules/cloudwatch_event | n/a |
| <a name="module_scheduler_stop"></a> [scheduler\_stop](#module\_scheduler\_stop) | ./modules/cloudwatch_event | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | variable "region" { type = string } | `string` | n/a | yes |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | n/a | `number` | `1` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `string` | `"t3.micro"` | no |
| <a name="input_lambda_runtime"></a> [lambda\_runtime](#input\_lambda\_runtime) | n/a | `string` | `"python3.9"` | no |
| <a name="input_start_cron"></a> [start\_cron](#input\_start\_cron) | n/a | `string` | n/a | yes |
| <a name="input_stop_cron"></a> [stop\_cron](#input\_stop\_cron) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_instance_id"></a> [ec2\_instance\_id](#output\_ec2\_instance\_id) | n/a |
| <a name="output_lambda_start_arn"></a> [lambda\_start\_arn](#output\_lambda\_start\_arn) | n/a |
| <a name="output_lambda_stop_arn"></a> [lambda\_stop\_arn](#output\_lambda\_stop\_arn) | n/a |
