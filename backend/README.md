Na documentação é detalhado o provisionamento dos recursos da pasta backend. 

## Variáveis Necessárias 
```powershell
$env:ARM_CLIENT_ID="" # Client ID da App Registration
$env:ARM_TENANT_ID="" # Tenant ID da App Registration
$env:ARM_SUBSCRIPTION_ID="" # ID da Subscription
$env:ARM_CLIENT_SECRET="" # Client Secret da App Registration
```

## Detalhamento

Na pasta backend, são criados os recursos de resource group e storage account para armazenamento do arquivo .tfstate, arquivo que guarda todo o histórico dos arquivos provisionados.

Primeiro, é criado o resource group e logo após a storage account e o container onde ficará armazenado o arquivo .tfstate.

![alt text](./images/image.png)

[Veja mais detalhes sobre os recursos criados aqui.](DOCS.md)