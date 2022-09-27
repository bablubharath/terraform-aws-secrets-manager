output "secret_ids" {
  description = "Secret ids map"
  value       = { for k, v in aws_secretsmanager_secret.sm : k => v["id"] }
}

output "secret_arns" {
  description = "Secrets arns map"
  value       = { for k, v in aws_secretsmanager_secret.sm : k => v["arn"] }
}

# Rotate secrets
output "rotate_secret_ids" {
  description = "Rotate secret ids map"
  value       = { for k, v in aws_secretsmanager_secret.rsm : k => v["id"] }
}

output "rotate_secret_arns" {
  description = "Rotate secret arns map"
  value       = { for k, v in aws_secretsmanager_secret.rsm : k => v["arn"] }
}
  
output "this_password" {
  value = random_password.this.result
  sensitive = true
}

output "this_password_as_list" {
  value = split("",random_password.this.result)
  sensitive = true
}

output "this_password_as_json" {
  value = jsonencode({ "password" = random_password.this.result})
  sensitive = true
}

output "this_password_as_yaml" {
  value = yamlencode({ "password" = random_password.this.result})
  sensitive = true
}

output "this_password_b64" {
  value = base64encode(random_password.this.result)
  sensitive = true
}

output "this_password_md5" {
  value = md5(random_password.this.result)
  sensitive = true
}

output "this_password_sha1" {
  value = sha1(random_password.this.result)
  sensitive = true
}

output "this_password_sha256" {
  value = sha256(random_password.this.result)
  sensitive = true
}

output "this_password_sha512" {
  value = sha512(random_password.this.result)
  sensitive = true
}
