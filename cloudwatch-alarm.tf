module "aws_cloudwatch_alarm" {
  source              = "./modules/cloudwatch-alarm"
  count               = 2
  comparison_operator = "GreaterThanOrEqualToThreshold"
  alarm_name          = local.alarms[count.index].alarm_name
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  evaluation_periods  = 1
  threshold           = 1
  period              = 60
  unit                = "Count"
  dimensions          = local.alarms[count.index].dimensions

}
output "cloudwatch-alam" {
  value = module.aws_cloudwatch_alarm[*].cloudwatch_alarm_output.alarm_name
}
