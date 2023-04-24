---
Title: '07 - How to Create an Azure Static Web App Using the Template Spec'
Output: pdf_document
---

# How to Create an Azure Static Web App Using the Template Spec
## This guide will show you how to create an Azure Static Web App using the Azure Template Spec you created in the previous step.

### 1. Navigate to the Azure Portal.
### 2. Navigate to the Azure Template Spec. It will be in the `rg-templateSpec` resource group you created in a previous step, and it will be named: `static-web-app`. Click on the name of the Template Spec.
### 3. Click **Deploy**.
### 4. Update the following parameters:
#### Subscription: `<Your Azure Subscription>`
#### Region: `<Your Azure Region>`
#### Resource Group Name: `rg-<Company's Name>`
#### Location: `<The region you want the app to be deployed too >`
#### Git Hub Repo URL: `<The URL of the website repo you modified in a previous step>`
#### Web App Name: `static-web-app-<Company's Name>`
#### Git Hub Branch: `main`
#### Git Hub Token: `<The GitHub Token you created in a previous step>`
#### App Artifact Location: `\`
### 5. Click **Review + Create**.
### 6. Click **Create**.
### 7. Click **Go to resource**.
