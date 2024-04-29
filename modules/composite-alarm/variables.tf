variable "alarm_description" {
  description = "The description for the composite alarm."
}
variable "alarm_name" {
  description = "The name for the composite alarm. This name must be unique within the region"
}
variable "alarm_rule" {
  description = "An expression that specifies which other alarms are to be evaluated to determine this composite alarm's state"
}
variable "alarm_actions" {
  description = "The set of actions to execute when this alarm transitions to the ALARM state from any other state"
}
variable "ok_actions" {
  description = "The set of actions to execute when this alarm transitions to an OK state from any other state"
  default     = null
}

