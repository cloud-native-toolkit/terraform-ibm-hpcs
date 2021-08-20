output "id" {
  value       = local.id
  description = "The id of the provisioned HPCS instance."
}

output "guid" {
  value       = local.guid
  description = "The id of the provisioned HPCS instance."
}

output "name" {
  value       = local.name
  depends_on  = [ibm_resource_instance.hpcs_instance]
  description = "The name of the provisioned HPCS instance."
}

output "crn" {
  description = "The id of the provisioned HPCS instance"
  value       = local.id
}

output "location" {
  description = "The location of the provisioned HPCS instance"
  value       = var.region
  depends_on  = [data.ibm_resource_instance.hpcs_instance]
}

output "service" {
  description = "The name of the key provisioned for the HPCS instance"
  value       = local.service
  depends_on = [data.ibm_resource_instance.hpcs_instance]
}

output "label" {
  description = "The label for the redis instance"
  value       = var.label
  depends_on = [data.ibm_resource_instance.hpcs_instance]
}

variable "skip" {
  type        = bool
  description = "Flag indicating that the logic should be skipped (i.e. don't do anything)"
  default     = false
}
