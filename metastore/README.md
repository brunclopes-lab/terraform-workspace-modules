## Contexto Geral

Na documentação é detalhado o provisionamento dos recursos da pasta Metastore, que contém recursos
que podem ser criados somente uma vez.

## Variáveis necessárias para o deploy

```powershell
$env:ARM_CLIENT_ID="" # Client ID da App Registration
$env:ARM_TENANT_ID="" # Tenant ID da App Registration
$env:ARM_SUBSCRIPTION_ID="" # ID da Subscription
$env:ARM_CLIENT_SECRET="" # Client Secret da App Registration
$env:AZDO_PERSONAL_ACCESS_TOKEN="" # Token do Azure DevOps
$env:AZDO_ORG_SERVICE_URL="https://dev.azure.com/organization-example" # Link da organization do DevOps
$env:azure_client_secret="" # Client Secret da App Registration para o Provider
$env:databricks_account_id="" # Account ID do Databricks
$env:databricks_sp_terraform="" # ID do Service Principal Criado 
$env:databricks_user_email="" # Email do usuário principal do Databricks
$env:sql_server_user="" # Usuário do SQL Server a ser criado
$env:sql_server_password="" # Senha do SQL Server a ser criado
$env:vm_user="" # Usuário da VM
$env:vm_password="" # Senha da VM
```

## Detalhamento

O documento detalha o provisionamento dos recursos na Azure, que envolve a criação dos recursos utilizados em projetos de engenharia de dados.

Nesta pasta, utilizamos módulos para o provisionamento de recursos, com o objetivo de ter o código organizado, utilizando as boas práticas.

### Azure Entra ID

Neste módulo são criados os grupos do AD, nomeados como:

- data_analysts
- data_engineers
- owners
- metastore_owners

Também é feita a criação de uma app registration e uma secret value 

### Azure DevOps

São criados neste módulo o projeto, os repositórios do ADF e do Databricks, com suas branches main e dev. Também é criado o grupo data_engineers.

### Resource Group

Neste módulo é feito a criação dos grupos de recurso para os recursos a serem criados no projeto.
São criados os grupos de recurso utilizando o prefixo do projeto, sendo dois, um de dev e outro de prd. 

### Databricks Metastore

Módulo que provisiona os recursos necessários para o unity catalog que só podem ser criados uma vez, como os grupos e o metastore, além da inclusão
do service principal e do usuário principal no grupo metastore_owners.

### SQL Server

Neste módulo criamos um SQL Server e um SQL Database do tipo Basic, além da liberação do banco para todos os IPs.

### Storage Account

São criadas duas storage accounts com seus respectivos containers, uma sendo o Data Lake de dados e outra sendo o Data Lake para o Unity Catalog. Além disso, é feita a criação de diretórios para o Unity.

### Virtual Machine

É criada uma virtual network e também a máquina virtual de SO Windows. 

### Roles

São criados recursos que definem roles para grupos e recursos.

## Unity Catalog

Para o Unity Catalog, é criada uma Storage Account do Unity, com o container metastore.

Dentro do container, é criada uma pasta com o nome igual ao nome utilizado para o metastore, com a pasta “prd” e a pasta “unity”.

### Metastore

Já na parte do Metastore, é criado o metastore apontando para a pasta “unity” criada anteriormente, no container metastore. 

![alt text](./images/image.png)

### Storage Account

É criada uma storage accounts com seus respectivos containers, para o Unity Catalog.

### Virtual Machine

É criada uma virtual network e também a máquina virtual de SO Windows. 

## Unity Catalog

Para o Unity Catalog, é criada uma Storage Account do Unity, com o container metastore.

Dentro do container, é criada uma pasta com o nome igual ao nome utilizado para o metastore, com a pasta “prd” e a pasta “unity”.

### Metastore

Já na parte do Metastore, é criado o metastore apontando para a pasta “unity” criada anteriormente, no container metastore. 

[Veja mais detalhes sobre os recursos criados aqui.](DOCS.md)