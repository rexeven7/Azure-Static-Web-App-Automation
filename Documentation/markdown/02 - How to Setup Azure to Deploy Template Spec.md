---
Title: '02 - How to Setup Azure to Deploy Template Spec'
Output: pdf_document
---

# How to Setup Azure to Deploy Template Spec using the Azure Cloud Shell
## This guide will show you how to setup Azure to deploy an Azure Template Spec that will be used to deploy Azure Static Web Apps from your GitHub account/organization.

###  1. Open the Azure Cloud Shell
###  2. Run the following command to switch to your subscription:
```bash
az account set --subscription <subscription-id>
```
###  3. Run the following command to set variables for your GitHub organization name and the name of the repo that contains the Bicep code for deploying an Azure Static Web App:
```bash
export githubOrganizationName=<github-organization-name>
export githubRepositoryName='azure-static-web-app-bicep'
```
###  4. Create the appliction registration that will be used to deploy the Azure Template Spec:
```bash
applicationRegistrationDetails=$(az ad app create --display-name 'azure-static-web-app-bicep')
applicationRegistrationObjectId=$(echo $applicationRegistrationDetails | jq -r '.id')
applicationRegistrationAppId=$(echo $applicationRegistrationDetails | jq -r '.appId')
```
###  5. Create the federated credential for the application registration:
```bash
az ad app federated-credential create \
   --id $applicationRegistrationObjectId \
   --parameters "{\"name\":\"azure-static-web-app-bicep\",\"issuer\":\"https://token.actions.githubusercontent.com\",\"subject\":\"repo:${githubOrganizationName}/${githubRepositoryName}:ref:refs/heads/main\",\"audiences\":[\"api://AzureADTokenExchange\"]}"
```
###  6. Create the service principal for the application registration:
```bash
az ad sp create --id $applicationRegistrationObjectId
```
###  7. Create the resource group that will be used to deploy the Azure Template Spec:
```bash
az group create --name 'rg-templateSpec' --location 'eastus2'
resourceGroupResourceId=$(az group show --name rg-templateSpec --query id --output tsv)
```
###  8. Create the role assignment for the application registration:
```bash
az role assignment create \
  --assignee $applicationRegistrationAppId \
  --role 'Contributor' \
  --scope $resourceGroupResourceId
```
###  9. Echo the application registration details:
```bash
echo "AZURE_CLIENT_ID: $applicationRegistrationAppId"
echo "AZURE_TENANT_ID: $(az account show --query tenantId --output tsv)"
echo "AZURE_SUBSCRIPTION_ID: $(az account show --query id --output tsv)"
```