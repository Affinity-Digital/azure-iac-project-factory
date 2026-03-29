locals {
  approvers = toset(values(var.approvers))
}

resource "github_team" "this" {
  name        = local.resource_names.team_name
  description = "Approvers for the Landing Zone Terraform Apply"
  privacy     = "closed"
}

resource "github_team_membership" "this" {
  for_each = local.approvers
  team_id  = github_team.this.id
  username = each.value
  role     = "member"
}

resource "github_team_repository" "this" {
  team_id    = github_team.this.id
  repository = github_repository.this.name
  permission = "push"
}
