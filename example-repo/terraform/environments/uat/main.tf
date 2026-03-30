module "workload" {
  source = "../../modules/workload"

  resource_group_name          = var.resource_group_name
  resource_group_create        = var.resource_group_create
  location                     = var.location
  resource_name_workload       = var.resource_name_workload
  resource_name_environment    = var.resource_name_environment
  resource_name_sequence_start = var.resource_name_sequence_start
  resource_name_templates      = var.resource_name_templates
  virtual_network_address_space = var.virtual_network_address_space
  virtual_network_subnets      = var.virtual_network_subnets
  virtual_machine_sku          = var.virtual_machine_sku
  tags                         = var.tags
}
