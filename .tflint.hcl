# .tflint.hcl
plugin "aws" {
  enabled = true
  version = "0.29.0" # Pin to latest compatible version (update as needed)
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  region  = "ap-south-1"
}

# Enable all default rules for AWS
rule "aws_instance_invalid_type" { enabled = true }
#rule "aws_instance_default_standard_volume_type" { enabled = true }
rule "aws_db_instance_invalid_type" { enabled = true }
rule "terraform_unused_declarations" { enabled = true }
#rule "terraform_documented_outputs" { enabled = true }
#rule "terraform_naming_convention" {
# enabled = true
#  regex = "^[a-z][a-z0-9_]*$"
#}