#variable "region" {
#  type = string
#}
variable "ami_id" {
  type = string
}
variable "instance_type" { 
  type = string
  default = "t3.micro" 
}
variable "instance_count" { 
  type = number
  default = 1 
}
variable "lambda_runtime" {
  type = string
  default = "python3.9" 
}
variable "start_cron" {
  type = string
}
variable "stop_cron" {
  type = string
}