module "cloudwatch_dashboard" {
  source         = "./modules/cloudwatch-dashboard"
  dashboard_name = "lambda_cloudwatch_dashboard"
  dashboard_body = jsonencode({
    widgets = local.widgets
#     widgets = [
#       {
#         type   = "metric"
#         x      = 0
#         y      = 0
#         width  = 12
#         height = 6

#         properties = {
#           metrics = 
#           period = 300
#           stat   = "Sum"
#           region = "eu-west-2"
#           title  = "Lambda User Signup CPU"
#         },
#       },
#       {
#         type   = "metric"
#         x      = 0
#         y      = 0
#         width  = 12
#         height = 6
#         properties = {
#           metrics = [
#             [
#               "AWS/Lambda", "Errors", "FunctionName", "get-booking-by-id"
#             ]
#           ]
#           period = 300
#           stat   = "Sum"
#           region = "eu-west-2"
#           title  = "Lambda User Get Booking"
#         }
#       },
#   ] 
  })
}
