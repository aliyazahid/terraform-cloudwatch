######### alarm name format ########
variable "org" {
  default     = "org"
  description = "Organization name"
}
variable "env" {
  default     = "env"
  description = "Environment variable"
}
variable "app" {
  default     = "app"
  description = "App name"
}
variable "event_name" {
  default     = "event_name"
  description = "Event name"
}

#####widgets attributes######
variable "type" {
  description = "type of widgets"
  default     = "metric"
  type        = string
}
variable "x" {
  description = "x is representing x-axis"
  default     = 0
  type        = number
}
variable "y" {
  description = "y is representing y-axis"
  default     = 0
  type        = number

}
variable "width" {
  description = "width of the metric"
  default     = 12
  type        = number
}
variable "height" {
  description = "height of the metric"
  default     = 6
  type        = number
}
