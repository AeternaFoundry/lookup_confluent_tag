output "tag_lookup_id" {
  description = "Map of id values across all tag_lookup, keyed the same as var.tag_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_tag.tag_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tag_lookup_credentials" {
  description = "Map of credentials values across all tag_lookup, keyed the same as var.tag_lookup except keys with no credentials are omitted"
  value       = { for k, v in data.confluent_tag.tag_lookup : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "tag_lookup_description" {
  description = "Map of description values across all tag_lookup, keyed the same as var.tag_lookup except keys with no description are omitted"
  value       = { for k, v in data.confluent_tag.tag_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "tag_lookup_entity_types" {
  description = "Map of entity_types values across all tag_lookup, keyed the same as var.tag_lookup except keys with no entity_types are omitted"
  value       = { for k, v in data.confluent_tag.tag_lookup : k => v.entity_types if v.entity_types != null && length(v.entity_types) > 0 }
}
output "tag_lookup_name" {
  description = "Map of name values across all tag_lookup, keyed the same as var.tag_lookup except keys with no name are omitted"
  value       = { for k, v in data.confluent_tag.tag_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "tag_lookup_rest_endpoint" {
  description = "Map of rest_endpoint values across all tag_lookup, keyed the same as var.tag_lookup except keys with no rest_endpoint are omitted"
  value       = { for k, v in data.confluent_tag.tag_lookup : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "tag_lookup_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all tag_lookup, keyed the same as var.tag_lookup except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in data.confluent_tag.tag_lookup : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}
output "tag_lookup_version" {
  description = "Map of version values across all tag_lookup, keyed the same as var.tag_lookup except keys with no version are omitted"
  value       = { for k, v in data.confluent_tag.tag_lookup : k => v.version if v.version != null }
}

