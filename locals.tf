locals {
  alarms = [
    {
      alarm_name = "${format("%s-%s-%s-%s-alarm-signup", var.org, var.env, var.app, var.event_name)}"
      dimensions = {
        FunctionName : "user-signup"
      }
    },
    {
      alarm_name = "${format("%s-%s-%s-%s-alarm-get-booking", var.org, var.env, var.app, var.event_name)}"
      dimensions = {
        FunctionName : "get-booking-by-id"
      }
    }
  ]
  widgets = [
    {
      type = var.type
      properties = {
        metrics = [
          [
            "AWS/Lambda", "Errors", "FunctionName", "user-signup"
          ],
        ]
        title = "Lambda User Signup CPU"
      },
    },
    {
      properties = {
        metrics = [
          [
            "AWS/Lambda", "Errors", "FunctionName", "get-booking-by-id"
          ]
        ]
        title = "Lambda User Get Booking"
      }
    },
  ]
}
