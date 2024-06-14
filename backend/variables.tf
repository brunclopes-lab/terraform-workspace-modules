variable "owner" {
  type        = string
  description = "tag do owner"
  default     = "bruno"
}

variable "managed_by" {
  type        = string
  description = "tag de quem está gerenciando os recursos (criação e exclusão)"
  default     = "terraform"
}