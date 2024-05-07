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
      type   = var.type
      x      = 0
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Lambda", "Errors", "FunctionName", "user-signup"
          ],
        ]
        title  = "Lambda User Signup CPU"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 8
      y      = 0
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Lambda", "Invocations", "FunctionName", "user-signup"
          ],
        ]
        title  = "Lambda User Signup CPU Invocations"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 16
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Lambda", "Duration", "FunctionName", "user-signup"
          ],
        ]
        title  = "Lambda User Signup CPU Duration"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 0
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Lambda", "Errors", "FunctionName", "get-booking-by-id"
          ]
        ]
        title  = "Lambda User Get Booking Errors"
        region = var.region
      }
    },
    {
      type   = var.type
      x      = 8
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Lambda", "Invocations", "FunctionName", "get-booking-by-id"
          ],
        ]
        title  = "Lambda User Get Booking Invocations"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 16
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Lambda", "Duration", "FunctionName", "get-booking-by-id"
          ],
        ]
        title  = "Lambda User Get Booking Duration"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 0
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/StorageGateway", "AvailabilityNotifications", "GatewayName", "ABC"
          ],
        ]
        title  = "StorageGateway ABC Availability Notifications"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 8
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/StorageGateway", "IoWaitPercent", "GatewayName", "ABC"
          ],
        ]
        title  = "StorageGateway ABC IoWaitPercent"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 16
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/StorageGateway", "ReadTime", "GatewayName", "ABC"
          ],
        ]
        title  = "StorageGateway ABC ReadTime"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 0
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/S3", "NumberOfObjects", "BucketName", "XYZ"
          ],
        ]
        title  = "S3 XYZ NumberOfObjects"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 8
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Transfer", "FilesOut", "ServerId", "dfujt4r46urfg"
          ],
        ]
        title  = "Transfer Family DEF FilesOut"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 16
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Transfer", "OnUploadExecutionsSuccess", "ServerId", "dfujt4r46urfg"
          ],
        ]
        title  = "Transfer Family DEF OnUploadExecutionsSuccess"
        region = var.region
      },
    },
    {
      type   = var.type
      x      = 0
      y      = var.y
      width  = var.width
      height = var.height
      properties = {
        metrics = [
          [
            "AWS/Transfer", "OnUploadExecutionsFailed", "ServerId", "dfujt4r46urfg"
          ],
        ]
        title  = "Transfer Family DEF OnUploadExecutionsFailed"
        region = var.region
      },
    },
  ]
}
