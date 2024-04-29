variable "comparison_operator" {
  type        = string
  description = "The arithmetic operation to use when comparing the specified Statistic and Threshold"
}
variable "alarm_name" {
  type        = string
  description = "The descriptive name for the alarm"
}
variable "evaluation_periods" {
  type        = string
  description = "The number of periods over which data is compared to the specified threshold."
}
variable "metric_name" {
  type        = string
  description = "The name for the alarm's associated metric"
}
variable "namespace" {
  type        = string
  description = "The namespace for the alarm's associated metric"
}
variable "period" {
  type        = string
  description = "The period in seconds over which the specified"
}
variable "statistic" {
  description = "The statistic to apply to the alarm's associated metric"
  default     = "Average"
}
variable "threshold" {
  type        = number
  description = "The value against which the specified statistic is compared"
}
variable "dimensions" {
  type        = map(any)
  description = "The dimensions for the alarm's associated metric"
}
variable "unit" {
  type        = string
  description = "The unit for the alarm's associated metric"
}