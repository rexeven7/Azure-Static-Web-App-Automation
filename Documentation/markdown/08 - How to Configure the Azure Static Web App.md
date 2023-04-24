---
Title: '08 - How to Configure the Azure Static Web App.md'
Output: pdf_document
---

# How to Configure the Azure Static Web App

## This guide will show you how to configure the Azure Static Web App you created in the previous step. You will need to configure the following:

- **Custom domains**
- **Role management**

### 1. Navigate to the Azure Portal.

### 2. Navigate to the Azure Static Web App you created in the previous step. It will be in the `rg-<Company's Name>` resource group you created in a previous step, and it will be named: `static-web-app-<Company's Name>`. Click on the name of the Static Web App.

### 3. Click **Custom domains**.

### 4. Click **Add** and choose **Custon domain on other DNS**.

### 5. Enter the domain you want to use for the Static Web App.

### 6. Click **Next**.

### 7. Click **Generate Code** to generate a DNS TXT record. Generate and copy the TXT hostname record and enter it with your DNS provider to confirm your domain ownership. It can take up to 12 hours for DNS entry changes to take effect.

### 8. Once the TXT record has propagated, you will repeat the above steps but this time you will change the **Hostname record type** to **CNAME**.

### 9. Click **Add**