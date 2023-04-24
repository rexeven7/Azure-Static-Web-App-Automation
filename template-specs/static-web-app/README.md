[![template-spec-static-web-app](https://github.com/kaltrep/azureStaticWebAppBicep/actions/workflows/template-spec-static-web-app.yml/badge.svg)](https://github.com/kaltrep/azureStaticWebAppBicep/actions/workflows/template-spec-static-web-app.yml)
# Azure Static Web App and Logic Apps with Azure Bicep
This repo contains Azure Bicep files to create an Azure Resource Group and deploy a Static Web App.

## What does it do?

This repo deploys a resource group with the following resources:

* Azure Static Web App

The output of the deployment is the URL of the Static Web App.
GitHub Actions also publishes the Bicep code as a Template Spec for re-usability both via code and the Azure Portal.

## How to deploy

### Prerequisites

* Azure CLI
* Azure Bicep CLI

### Deploy

1. Clone the repo
2. Run the following command to deploy the resources:

```bash
az deployment group create --template-file ./main.bicep
```
