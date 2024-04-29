module "aws_cloudwatch_composite_alarm" {
  source            = "./modules/composite-alarm"
  alarm_name        = "lambda_composite_alarm"
  alarm_description = "this alarm includes all the child alarm related to lambda"
  alarm_actions     = ["arn:aws:lambda:eu-west-2:339713106964:function:nodejs-pgp"]
  alarm_rule        = "ALARM(${module.aws_cloudwatch_alarm[0].cloudwatch_alarm_output.alarm_name}) OR ALARM(${module.aws_cloudwatch_alarm[1].cloudwatch_alarm_output.alarm_name})"
}

output "aws_cloudwatch_composite_alarm_output" {
  value = module.aws_cloudwatch_composite_alarm.composite_alarm_output.arn
}
