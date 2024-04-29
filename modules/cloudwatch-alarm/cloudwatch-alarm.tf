resource "aws_cloudwatch_metric_alarm" "this" {
  comparison_operator = var.comparison_operator
  alarm_name          = var.alarm_name
  metric_name         = var.metric_name
  namespace           = var.namespace
  period              = var.period
  evaluation_periods  = var.evaluation_periods
  statistic           = var.statistic
  threshold           = var.threshold
  dimensions = var.dimensions
  unit = var.unit
}