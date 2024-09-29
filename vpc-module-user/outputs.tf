output "vpc_id" {
  value = module.vpc.vpc__id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "database_subnet_ids" {
  value = module.vpc.database_subnet_ids
}

# output "az_info" {
#   value = module.vpc.az__info
# }

# output "default_vpc_info" {
#   value = module.vpc.default_vpc_info
# }

# output "main_route_table_info" {
#   value = module.vpc.main_route_table_info
# }