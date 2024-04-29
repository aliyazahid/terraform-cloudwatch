resource "aws_cloudwatch_composite_alarm" "composite_alarm" {
  alarm_description = var.alarm_description
  alarm_name        = var.alarm_name
  alarm_actions = var.alarm_actions
  ok_actions    = var.ok_actions
  alarm_rule = var.alarm_rule
}