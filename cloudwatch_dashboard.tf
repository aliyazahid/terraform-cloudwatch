module "cloudwatch_dashboard" {
  source         = "./modules/cloudwatch-dashboard"
  dashboard_name = "lambda_cloudwatch_dashboard"
  dashboard_body = jsonencode({
    widgets = local.widgets
  })
}
