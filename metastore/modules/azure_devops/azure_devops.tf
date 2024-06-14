# CRIAÇÃO DO PROJETO 
resource "azuredevops_project" "project" {
  name               = "prj-${var.prefix_name}"
  description        = "Projeto para o lab"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Scrum"
}

# CRIAÇÃO DO REPOSITORIO PARA O ADF 
resource "azuredevops_git_repository" "rep_adf" {
  project_id = azuredevops_project.project.id
  name       = "rep-adf-${var.prefix_name}"
  initialization {
    init_type = "Clean"
  }
}

# CRIAÇÃO DAS BRANCHES PARA O REPO DO ADF
resource "azuredevops_git_repository_branch" "branch_adf" {
  repository_id = azuredevops_git_repository.rep_adf.id
  for_each      = toset(["main", "dev"])
  name          = each.value
  ref_branch    = azuredevops_git_repository.rep_adf.default_branch
}

# CRIAÇÃO DO REPOSITORIO PARA O DATABRICKS
resource "azuredevops_git_repository" "rep_databricks" {
  project_id = azuredevops_project.project.id
  name       = "rep-databricks-${var.prefix_name}"
  initialization {
    init_type = "Clean"
  }
}

# CRIAÇÃO DAS BRANCHES PARA O REPO DO DATABRICKS
resource "azuredevops_git_repository_branch" "branch_databricks" {
  repository_id = azuredevops_git_repository.rep_databricks.id
  for_each      = toset(["main", "dev"])
  name          = each.value
  ref_branch    = azuredevops_git_repository.rep_databricks.default_branch
}

# CRIAÇÃO DE GRUPO NO DEVOPS
resource "azuredevops_group" "data_engineers" {
  scope        = azuredevops_project.project.id
  display_name = "data_engineers"
  description  = "Data Engineers Group"
}