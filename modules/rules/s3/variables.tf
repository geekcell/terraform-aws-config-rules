# Context
variable "tags" {
  default     = {}
  description = "A map of tags to add to this config resource."
  type        = map(string)
}

# Rule specific configuration
variable "configuration" {
  description = "The configurations to apply."
  type = map(object({
    enabled = bool
  }))
}
