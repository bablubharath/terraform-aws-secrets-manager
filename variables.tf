variable "recovery_window_in_days" {
  description = "Specifies the number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days."
  type        = number
  default     = 7
}

#Secrets
variable "rotate_secrets" {
  description = "Map of secrets to keep and rotate in AWS Secrets Managers"
  type        = any
  default     = {}
}

# Secrets
variable "secrets" {
  description = "Map of secrets to keep in AWS Secrets Manager"
  type        = any
  default     = {}
}

variable "unmanaged" {
  description = "Terraform must ignore secrets lifecycle. Using this option you can initialize the secrets and rotate them outside Terraform, thus, avoiding other users to change or rotate the secrets by subsequent runs of Terraform"
  type        = bool
  default     = false
}

variable "automatically_after_days" {
  description = "Specifies the number of days between automatic scheduled rotations of the secret."
  type        = number
  default     = 30
}

# Tags
variable "tags" {
  description = "Specifies a key-value map of user-defined tags that are attached to the secret."
  type        = any
  default     = {}
}

variable "keepers" {
  default = {}
  type    = map
}

variable "length" {
  default = 16
  type    = number
}

variable "lower" {
  default = true
  type    = bool
}

variable "min_lower" {
  default = 2
  type    = number
}

variable "min_numeric" {
  default = 2
  type    = number
}

variable "min_special" {
  default = 2
  type    = number
}

variable "min_upper" {
  default = 2
  type    = number
}

variable "number" {
  default = true
  type    = bool
}

variable "override_special" {
  default = "!@#$%&*()-_=+[]{}<>:?"
  type    = string
}

variable "special" {
  default = true
  type    = bool
}

variable "upper" {
  default = true
  type    = bool
}
