---
Title: '03 - How Create Secrets for GitHub Actions & Deploy the Azure Template Spec'
Output: pdf_document
---

# How Create Secrets for GitHub Actions
## This guide will show you how to create secrets for GitHub Actions that will be used in the Azure Template Spec to deploy Azure Static Web Apps from your GitHub account/organization.

### 1. Navigate to the GitHub repo azure-static-web-app-bicep.
### 2. Click **Settings**.
### 3. Click **Secrets and variables**.
### 4. Click **New repository secret**.
### 5. Click **Actions.
### 6. Click **New repository secret**.
### 7. Create a secret for the Azure Client ID:
#### Name: `AZURE_CLIENT_ID`
#### Value: `The Client ID of the Application Registration you created in the previous step.`
### 8. Create a secret for the Azure Tenant ID:
#### Name: `AZURE_TENANT_ID`
#### Value: `The Tenant ID of the Application Registration you created in the previous step.`
### 9. Create a secret for the Azure Subscription ID:
#### Name: `AZURE_SUBSCRIPTION_ID`
#### Value: `The Subscription ID of the Azure Subscription you used previous step.`
### 10. Run the GitHub Action to deploy the Azure Template Spec:
#### Navigate to the GitHub repo azure-static-web-app-bicep.
#### Click **Actions**.
#### Click **template-spec-static-web-app**.
#### Click **Run workflow**.